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
    List mycontacts = listofcontacts;
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
  List myContacts = listofcontacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        backgroundColor:  Colors.yellowAccent,
        title: const Text("Mycontact",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold)),
        
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
       itemCount: myContacts.length,
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
            MaterialPageRoute(builder: (context) => ContactPage(myContacts: myContacts,)));
          },
            child: ListTile(
               leading: CircleAvatar(backgroundImage: NetworkImage("${myContacts[index]["image"]}"),
            ),
            title: Text(
              myContacts[index]["name"],
        style: TextStyle(fontWeight: FontWeight.w800),
            ),
            subtitle: Text(myContacts[index]["phone"]),
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


List listofcontacts = [
{
  "name": "nusrat",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=2"
 },
{
  "name": "niamatu",
 "location":"jahan",
 "email": "niamatu@gmail.com",
 "phone":"+223509791766",
 "Group":"family",
 "image":"https://picsum.photos/200/300?random=4"
 },
{
  "name": "safia",
 "location":"tendamba",
 "email": "safia8@gmail.com",
 "phone":"+22350477615",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=8"
 },
{
  "name": "zaharie",
 "location":"nadoli",
 "email": "zareeee@gmail.com",
 "phone":"+2235545143",
 "Group":"family",
 "image":"https://picsum.photos/200/300?random=5"
 },
{
  "name": "shamira",
 "location":"limanyiri",
 "email": "shamihat@gmail.com",
 "phone":"+2235563843",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=3"
 },
{
  "name": "ali",
 "location":"danku",
 "email": "alidalanpan@gmail.com",
 "phone":"+2235562168",
 "Group":"family",
 "image":"https://picsum.photos/200/300?random=7"
 },
{
  "name": "nusratjahan",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=16"
 },
{
  "name": "shasha",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=15"
 },
{
  "name": "shamsha",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=5"
 },
{
  "name": "sungnuma",
 "location":"jujeidayiri",
 "email": "sungnuma@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=9"
 },
{
  "name": "haki",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=12"
 },
{
  "name": "saabit",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=11"
 },
{
  "name": "nuratu",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=10"
 },
{
  "name": "hamida",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=13"
 },
{
  "name": "elder",
 "location":"jujeidayiri",
 "email": "nusratjahan@gmail.com",
 "phone":"+2235562143",
 "Group":"friends",
 "image":"https://picsum.photos/200/300?random=14"
 },
];
