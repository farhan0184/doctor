

import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  late String name;
  late String category;
  late String img;
  late String patientFee;
  late String address;
  late String description;
  late String vistingHour;
  late String closingDate;
  FourthPage({Key? key, required this.name, required this.category, required this.img, required this.patientFee,required this.address, required this.description, required this.vistingHour,required this.closingDate}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 79, 79),
        centerTitle: true,
        title: Text(widget.category+' Specialist',style: TextStyle(color: Color.fromARGB(255, 77, 76, 76))),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          
          children: [
            Container(
              height: 300,
              alignment: Alignment.center,
              child: Image.asset(
                widget.img
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              
              
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  
                  children: [
                    
                    Text('Professor Dr. '+widget.name, style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 18, 23, 92),
                    fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 10,),
                    Text(widget.description,style: TextStyle(
                      fontSize: 13,
                    fontWeight: FontWeight.bold,
                    ),),

                    SizedBox(height: 10,),
                    Text('Detail',style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 18, 23, 92),
                    fontWeight: FontWeight.bold,)),
                    SizedBox(height: 10,),
                    Text('Doctor fees - '+widget.patientFee+'TK',style: TextStyle(
                      fontSize: 13,
                    fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
              
                          Text('Address: '+widget.address,style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 20,),
                          Text("Visiting Hour: "+widget.vistingHour,style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 20,),
                          Text("Closing Day: "+widget.closingDate,style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}