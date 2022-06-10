
import 'package:doctor/data.dart';
import 'package:doctor/foutth_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';





class ThirdPage extends StatefulWidget {
  final String item;
  final String category;
  ThirdPage({Key? key, required this.item,required this.category}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String img = 'assets/images/doctor.jpg';
  List<String> names = [
    'M Amdadul Haque',
    'S.M. Abdul Ohad'
  ];
  List<String> qualifications = [
    'MBBS, D-Card, MCPSS,FRSH',
    'MBBS, MACP, MD'
  ];
  
  List<String> patientFees = [
    '600',
    '550'
  ];
  List<String> addresses = [
    '42, Khan Jahan Ali Road, Shantidham Mor',
    '25-26, KDA AVENUE'
  ];
  List<String> descriptions = [
    'Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. They examine patients, review their medical history, diagnose illnesses or injuries, administer treatment, and counsel patients on their health and well-being.',
    "A doctor is responsible for all sides of care of a patient. They diagnose, educate, and treat patients to ensure that they have the best possible care. A few of the main duties of a doctor are performing diagnostic tests, recommending specialists for patients, document patient's medical history, and educating patients."
  ];
  List<String> vistingHours = [
    '11 am to 2 pm',
    '10am to 1pm'
  ];
  List<String> closingDates = [
    'Friday',
    'Sunday'
  ];
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 79, 79),
        centerTitle: true,
        title: Text(widget.item,style: TextStyle(color: Color.fromARGB(255, 77, 76, 76))),
      ),
      body: buildFuture(),
    );
    
  }
  Widget buildFuture() => ListView.separated(

    itemCount: names.length,
    itemBuilder: (context, index){
      final name = names[index];
      final qualification = qualifications[index];
      final patientFee = patientFees[index]; 
      final address = addresses[index]; 
      final description = descriptions[index]; 
      final vistingHour = vistingHours[index]; 
      final closingDate = closingDates[index]; 

      return ListTile(
        onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                    
                    builder: (context) => FourthPage(name: name,category: widget.category,
                     img: img, patientFee:patientFee, address: address,description:description,
                     vistingHour: vistingHour,closingDate:closingDate) ,
              ));
            },
        leading: Container (
          
           child: Image.asset(
             img
           ),
        ),
        title: Text('Professor Dr. $name',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 5, 5, 5)
              )),
        subtitle: Text(qualification+'('+widget.category+ ' Specialist)',),
        
      );

    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}

