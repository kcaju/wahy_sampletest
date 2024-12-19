import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.desc,
      required this.rate});
  final String title, image, price, desc, rate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              children: [
                InkWell(
                  //back to items screen
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Food Details",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                ),
                Positioned(
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          Text(
                            "$title",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "$price",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
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
                                    "5",
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
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                    "$rate",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.bloodtype,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "100 kcal",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.watch,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "30 mint",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "About food",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "$desc",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                  ),
                ),
                Positioned(
                  left: 100,
                  child: Image.asset(
                    "assets/images/pizza1.jpg",
                    height: 200,
                    width: 200,
                  ),
                ),
                //add to cart button
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      height: 80,
                      width: 390,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
