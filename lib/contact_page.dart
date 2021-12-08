// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key, required this.myContacts }) : super(key: key);

final myContacts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title:const Text("Contact",style:TextStyle(fontSize: 25,fontWeight:  FontWeight.bold)),
        actions: const  [Icon(Icons.more_vert
        
        )],
      ),
      body: ListView(children: [Card(
        margin: const EdgeInsets.all(0),
        child:Column(children: [
          SizedBox(
            height: 20,

          ),
          CircleAvatar(backgroundImage: NetworkImage(myContacts['image']),
          radius: 50,),
          SizedBox(
            height: 20,
          ),
          Text(myContacts['name'],style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(myContacts['location']),
          SizedBox(
            height: 20,
          )
        ],),
      ), Card(
        child:Column(children: [
        ListTile(
          title: Text("Mobile"),
          subtitle: Text(myContacts['phone']),
          trailing: Row(children: [
            Icon(Icons.message),
            Icon(Icons.phone),
          ],),
        )  
        ],)
      )
      ],),
     
      
    );
  }
}