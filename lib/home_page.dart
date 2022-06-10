import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor/nav_bar.dart';
import 'package:doctor/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = true;
  List<String> items = [
    'dhaka',
    'khulna',
    'rajshahi',
    'barishal',
    'chittagong',
    'rangpur',
    'mymensingh',
    'sylhet'
    
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 79, 79),
        centerTitle: true,
        title: Text('DoctorApp',style: TextStyle(color: Color.fromARGB(255, 77, 76, 76)), ),
      ),
      drawer: NavBar(),
      body: buildGrid(),
    );

  Widget buildGrid() => 
    StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('doctors').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
          ),
          itemCount: snapshot.data!.docs.length, 
          itemBuilder: (BuildContext context, int index) {
            var servicesInfo =
                snapshot.data!.docs[index].data() as Map<String, dynamic>;
            String img = servicesInfo['img'];
            
            final String item = servicesInfo['name'];
            
            return GridTile(
              child: InkWell(
                child: Ink.image(
                  image: NetworkImage(
                    img
                  ),
                  fit: BoxFit.cover
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        
                        builder: (context) => SecondPage(item: item),
                  ));
                },
              ),
              
            );
          }
  );
      }
    );
  
  
  
}