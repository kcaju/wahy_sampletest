import 'package:flutter/material.dart';
import 'package:wahy_sampletest/dummy_db.dart';
import 'package:wahy_sampletest/view/itemscreen/items_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(color: Colors.red),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.white),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 25,
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.red,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemsScreen(
                                title: DummyDb.items[index]['title'],
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 140,
                              width: double.infinity,
                            ),
                            Positioned(
                              left: 70,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 80, vertical: 10),
                                height: 130,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey.shade400, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      DummyDb.items[index]['title'],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      DummyDb.items[index]['count'],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 20,
                              child: Image.asset(
                                DummyDb.items[index]['image'],
                                height: 100,
                                width: 100,
                              ),
                            ),
                            const Positioned(
                              right: 30,
                              top: 45,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 30,
                    ),
                    itemCount: DummyDb.items.length,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
