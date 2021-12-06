// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: "contact App",
      home:HomePage() ,
    );
  }
}

// gggggggggggg
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        backgroundColor:  Colors.yellowAccent,
        title: const Text("My contact",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold)),
        
        actions:[
   Container(
     margin: const EdgeInsets.only(right:16),
     child:const CircleAvatar(
  backgroundImage: AssetImage("images/woman.jpg"),
),
   )
        ]
      ),
     body: ListView.builder(
       itemCount: 5,
       itemBuilder: (BuildContext context, index){
       return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children:  [
           if(index==0)Padding(
             padding: const EdgeInsets.all(16.0),
             child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),
             hintText: "Search by name or number",
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
             ),),
           ),
           if(index==0)
           const Padding(
             padding:  EdgeInsets.all(16.0),
             child:  Text("Recents",style:TextStyle(fontSize: 25)),
           ),
           if(index==2)const Padding(
             padding:  EdgeInsets.all(8.0),
             child:  Text("Contacts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
             ),
           
           ),
        InkWell(
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => ContactPage()));
          },
            child: const  ListTile(
               leading: CircleAvatar(backgroundImage: AssetImage("images/lady.jpg"),
            ),
            title: Text("Niamatu",style: TextStyle(fontWeight: FontWeight.w800),
            ),
            subtitle: Text("+22557762143"),
            trailing: Icon(Icons.more_horiz),
             ),
          ),
          const Divider(
             height: 4,
            color: Colors.grey,
           )
         ],
       );
     }), 
     
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),

   );
  }
}