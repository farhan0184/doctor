import 'package:doctor/third_page.dart';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String item;
  SecondPage( {Key? key, required this.item}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> categories = [
    'Cardiology',
    'Cancer',
    'Child',
    'DAS',
    'Dental',
    'ENT',
    'Eye',
    'Gynecology',
    'Medicine',
    'Neurosurgery',
    'Nephrologist',
    'Orthopedics',
    'Rheumatology',
    'Thyroid',
    'Urology'
  ];
  List<String> categoriesMeanings =[
    'The branch of medicine that deals with diseases and abnormalities of the heart',
    'A disease caused by an uncontrolled division of abnormal cells in a part of the body.',
    'The child-life specialist helps children and their families understand medical issues and gives psychological and emotional support.',
    'Dermatologist, Allergy and Sex Specialist.',
    'Dentists who receive additional training in a specific dental specialty, above and beyond their general dentistry degree.',
    'Special training in diagnosing and treating diseases of the ear, nose, and throat.',
    'A physician who specializes in the diagnosis and treatment of diseases of the eye.',
    'Specializes in female reproductive health.',
    'A branch of medical practice that is focused on a defined group of patients, diseases, skills, or philosophy.',
    'Diagnoses and treats conditions that affect your nervous system, including your brain, spinal cord and nerves.',
    'Specialize in conditions that affect the kidney.',
    'Specialize in the musculoskeletal system - the bones, joints, ligaments, tendons, and muscles that are so essential to movement and everyday life.',
    'Specialized training in inflammatory (rheumatic) disease.',
    'Endocrinologists who specifically study, diagnose, manage and treat the thyroid gland.',
    'specializing in conditions that affect the urinary tract in men, women and children, and diseases that affect the reproductive system.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 79, 79),
        centerTitle: true,
        title: Text(widget.item,style: TextStyle(color: Color.fromARGB(255, 77, 76, 76)),),
      ),
      body: buildList(),
    );
    
  }
  Widget buildList() => ListView.separated(

    itemCount: categories.length,
    itemBuilder: (context, index){
      final category = categories[index];
      final categoriesMeaning = categoriesMeanings[index];

      return ListTile(
        onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                    
                    builder: (context) => ThirdPage(item: widget.item,category: category),
              ));
            },
        leading: CircleAvatar(
          radius: 30,
           backgroundImage: AssetImage(
             'assets/images/medical.png'
           ),
        ),
        title: Text(category+' Specialist',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 5, 5, 5)
              )),
        subtitle: Text(categoriesMeaning,),
        
      );

    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}