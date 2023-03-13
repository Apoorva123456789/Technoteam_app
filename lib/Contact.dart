// Made by Techflux Solutions at 3-March-2023 - Apoorva Junagade
// Code for contact us page
import 'package:flutter/material.dart';
class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(Icons.info_outline,size:32,color: Colors.black,),
            SizedBox(
              width: 8,
            ),
            Text(
              "Contact us",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      iconTheme: const IconThemeData(color: Colors.black),


    ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(20.0),
             child:
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 new ListTile(
                  // leading:  MyBullet(),
                   title:Row(
                     children:[MyBullet(), Text(' Name',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.deepOrangeAccent, )),])
                 ),
             //Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Container(
            //
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: MyBullet()
            //               Text('Name',style:TextStyle(fontSize: 20,  color: Colors.deepOrangeAccent, )),
            //       )
            //     ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your full name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    )
                  ),
                SizedBox(
                  height:20,
                ),
                 new ListTile(
                   // leading:  MyBullet(),
                     title:Row(
                         children:[MyBullet(), Text(' Email address',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,  color: Colors.deepOrangeAccent, )),])
                 ),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your e-mail Address',
                        prefixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height:20,
                ),
                 new ListTile(
                   // leading:  MyBullet(),
                     title:Row(
                         children:[MyBullet(), Text(' Subject',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,  color: Colors.deepOrangeAccent, )),])
                 ),
                Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter message subject',
                        prefixIcon: Icon(Icons.subject),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height:20,
                ),
                 new ListTile(
                   // leading:  MyBullet(),
                     title:Row(
                         children:[MyBullet(), Text(' Message',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,  color: Colors.deepOrangeAccent, )),])
                 ),
                Container(

                    child: TextField(
                      maxLines: 7,

                      decoration: InputDecoration(
                        hintText: 'Enter your message in detail',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 105),
                          child: Icon(
                            Icons.message,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                ),

Center(
  child:Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(

        backgroundColor: Colors.deepOrangeAccent,
      ),
      onPressed: (){},
      child:Text('Let\'s Talk',style:TextStyle(fontSize: 25))
    ),
  )
)
              ],
            ),
          ),
        ),
    );
  }

}
class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.deepOrangeAccent,
        shape: BoxShape.circle,
      ),
    );
  }
}