import 'package:bottom_bar_matu/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Technologie extends StatefulWidget {
  const Technologie({Key? key}) : super(key: key);

  @override
  State<Technologie> createState() => _TechnologieState();
}

class _TechnologieState extends State<Technologie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Technologie et programmation",
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
                        leading: Image.asset("asset/TEP.png",),
                        title: const Text("Analytique de données", style: TextStyle(
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Développeur et programmeur",
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Cyber-sécurité",
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Réseautage et Téléphonie",
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Chef de produit",
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Chargé de projet",
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Analyste d'affaires",
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Prototype et modèle",
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
                      leading: Image.asset("asset/TEP.png"),
                      title: const Text("Assurance qualité",
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