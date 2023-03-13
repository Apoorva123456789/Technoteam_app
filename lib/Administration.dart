import 'package:bottom_bar_matu/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Administration extends StatefulWidget {
  const Administration({Key? key}) : super(key: key);

  @override
  State<Administration> createState() => _AdministrationState();
}

class _AdministrationState extends State<Administration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Administration",
            style: TextStyle(
              color: Colors.black,
            )),
        iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),

      ),
      drawer:  Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('')),
            ListTile(
              title: const Text(
                'Become a Seller',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.sell_outlined),
              onTap: () {},
            ),
            // ListTile(
            //   title: const Text(
            //     'Language',
            //     style: TextStyle(color: Colors.black54),
            //   ),
            //   leading: const Icon(Icons.language),
            //   onTap: () {},
            // ),
            ListTile(
              title: const Text(
                'Theme',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.mode),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Contact us',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.info_outline),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 275),
              childAnimationBuilder: (widget) =>
                  SlideAnimation(
                    // horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                        leading: Image.asset("asset/A.png",),
                        title: const Text("Entree de donees", style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),),
                        shape: const RoundedRectangleBorder()
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("asset/A.png"),
                      title: const Text("Administration generale",
                        style: TextStyle(fontSize: 20, color: Colors.black),),
                      shape: const RoundedRectangleBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height:70 ,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("asset/A.png"),
                      title: const Text("Adjoint(e)",
                        style: TextStyle(fontSize: 20, color: Colors.black),),
                      shape: const RoundedRectangleBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("asset/A.png"),
                      title: const Text("Documentation",
                        style: TextStyle(fontSize: 20, color: Colors.black),),
                      shape: const RoundedRectangleBorder(
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("asset/A.png"),
                      title: const Text("Recharge",
                        style: TextStyle(fontSize: 20, color: Colors.black),),
                      shape: const RoundedRectangleBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("asset/A.png"),
                      title: const Text("Gestionare",
                        style: TextStyle(fontSize: 20, color: Colors.black),),
                      shape: const RoundedRectangleBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("asset/A.png"),
                      title: const Text("Expert Excel",
                        style: TextStyle(fontSize: 20, color: Colors.black),),
                      shape: const RoundedRectangleBorder(
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset("asset/A.png"),
                      title: const Text("Redaction",
                        style: TextStyle(fontSize: 20, color: Colors.black),),
                      shape: const RoundedRectangleBorder(),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}