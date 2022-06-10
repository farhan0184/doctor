import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader( // <-- SEE HERE
          decoration: BoxDecoration(color: const Color(0xff764abc)),
          accountName: Text(
            "Pinkesh Darji",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "pinkesh.earth@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          
        ),
        ListTile(
          leading: Icon(
            Icons.home,
          ),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.train,
          ),
          title: const Text('TopDoctor'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
  
  }
}