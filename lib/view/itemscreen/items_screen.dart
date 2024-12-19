import 'package:flutter/material.dart';
import 'package:wahy_sampletest/dummy_db.dart';
import 'package:wahy_sampletest/view/detailscreen/details.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
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
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.red,
                        size: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "$title",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //items list
                  ListView.separated(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Details(
                                      title: DummyDb.pizza[index]['title'],
                                      image: DummyDb.pizza[index]['image'],
                                      price: DummyDb.pizza[index]['price'],
                                      desc: DummyDb.pizza[index]['desc'],
                                      rate: DummyDb.pizza[index]['rate']),
                                ));
                          },
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 300,
                                width: 280,
                              ),
                              Positioned(
                                left: 30,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 25),
                                  height: 300,
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        DummyDb.pizza[index]['title'],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            DummyDb.pizza[index]['rate'],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        DummyDb.pizza[index]['weight'],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            DummyDb.pizza[index]['price'],
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade400,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              Positioned(
                                top: 15,
                                child: Image.asset(
                                  DummyDb.pizza[index]['image'],
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Positioned(
                                right: 5,
                                top: 32,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 55,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  height: 60,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(40)),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 35,
                          ),
                      itemCount: DummyDb.pizza.length)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
