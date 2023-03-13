import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'seller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
       primary:  Colors.white,)
        // color ColorScheme.fromSwatch().copyWith(
        //   primary:  Colors.white,)

       // primarySwatch: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('My Cart'),

      ),
      body: SingleChildScrollView(
        child:Center(
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
    height:625,
    width:320,
    child:  DecoratedBox(
    decoration:  BoxDecoration(
    border: Border.all(),

    ),
                child: Column(


                    children: [
           // SizedBox(height: 50),
            Container(
                child: Image.asset(
                  'asset/cart.gif',
                  width:300,
                  height: 300,
                ),
            ),
            Container(
                  child: Center(
                      child: Text(
                'Your cart is\n   empty.',
                style: TextStyle(fontSize: 40, color: Colors.black),
            ))),
           // SizedBox(height: 20),
            Container(
                  child: Center(
                      child: Text(
                'Looks like you haven\’t added\n anything to your cart yet',
                style: TextStyle(fontSize: 20, color: Colors.black),
            ))),
            SizedBox(height: 20),
            Container(
                child: Image.asset(
                  'asset/img_6.png',
                  height: 100,
                ),
            ),
            Container(
                child: Center(
                  child: InkWell(
                    child: Text(
                      'Lets go!!',
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Seller()),
                      );
                    },
                  ),
                ),
            ),
          ],),
              ),),],
      ),
        ),
      ),
    );

  }
}

fn() {}
