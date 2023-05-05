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
    GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
          ),
          itemCount: items.length, 
          itemBuilder: (BuildContext context, int index) {
            
            String item = items[index];
            
            
            
            return GridTile(
              child: InkWell(
                child: Ink.image(
                  image: AssetImage(
                    'assets/images/${item}.jpeg'
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