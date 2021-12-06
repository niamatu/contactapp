import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

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
        child:Column(children:const [
          SizedBox(
            height: 20,

          ),
          CircleAvatar(backgroundImage: AssetImage("images/woman.jpg"),
          radius: 50,),
          SizedBox(
            height: 20,
          ),
          Text("Neema",style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Tumu, Nabulo"),
          SizedBox(
            height: 20,
          )
        ],),
      ), Card(
        child:Column(children: [
        ListTile(
          title: Text("mobile"),
          subtitle: Text("+223557762149"),
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