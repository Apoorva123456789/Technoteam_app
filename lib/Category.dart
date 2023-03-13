import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'Administration.dart';
import 'Commercialization.dart';
import 'Contact.dart';
import 'Technologie.dart';
import 'seller.dart';
class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Expert Categories', style: TextStyle(color: Colors.black,)),
              iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),

            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(child: Text('')),
                  ListTile(
                    title: const Text(
                      'Become a Seller',
                      style: TextStyle(color: Colors.black54),
                    ),
                    leading: const Icon(Icons.sell_outlined),
                    onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Seller()),
                    );},
                  ),
                  ListTile(
                    title: const Text(
                      'Language',
                      style: TextStyle(color: Colors.black54),
                    ),
                    leading: const Icon(Icons.language),
                    onTap: () {},
                  ),
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
                       onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Contact()),
                    );},
                  ),
                ],
              ),
            ),
            body:AnimationLimiter(
                child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(7,(index) {
                      if (index == 0) {
                        // Add a new element at index 0
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 0,
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Administration()),
                                  );
                                },
                                child: Card(
                                  child: Column(
                                    children: [
                                      Flexible(
                                        flex: 3,
                                        child: Image.asset(
                                          'asset/A.png',
                                          height: 150,
                                        ),
                                      ),
                                      Flexible(
                                        child: const Text(
                                          'Administration',
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 1) {
                        // Add a new element at index 1
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 0,
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  Commercialisation()),
                                  );
                                },
                                child: Card(
                                  child: Column(
                                    children: [
                                      Flexible(
                                        child: Image.asset(  
                                          'asset/C.png',
                                          height: 150,
                                        ),
                                      ),
                                      Flexible(
                                        child: const Text(
                                          'Commercialisation',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 2) {
                        // Add a new element at index 2
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 0,
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: (){},
                                child: Card(
                                  child: Column(
                                    children: [
                                      Flexible(
                                        child: Image.asset(
                                          'asset/CAF.png',
                                          height: 150,
                                        ),
                                      ),
                                Flexible(
                                        child: const Text(
                                          'Comptabilité et Finance',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 3) {
                        // Add a new element at index 3
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 0,
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: (){},
                                child: Card(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'asset/CAC.png',
                                        height: 150,
                                      ),
                                      const Text(
                                        'Consultant et Coach',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 4) {
                        // Generate the other elements as before
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 0,
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: (){},
                                child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'asset/DAC.png',
                                          height: 150,
                                        ),
                                        const Text(
                                          'Design et contenu',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),
                        );
                      } else if (index == 5) {
                        // Generate the other elements as before
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 0,
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: (){},
                                child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'asset/L.png',
                                          height: 150,
                                        ),
                                        const Text(
                                          'Legal',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      else {
                        // Generate the other elements as before
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 0,
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  Technologie()),
                                  );
                                },
                                child: Card(
                                    child: Column(
                                      children: [ 
                                        Flexible(
                                          child: Image.asset(
                                            'asset/TEP.png',
                                            height: 150,
                                          ),
                                        ),
                                        Flexible(
                                          child: const Text(
                                            'Technologie et programmation',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    }
                    )
                )
            )
        )
    );
  }
}