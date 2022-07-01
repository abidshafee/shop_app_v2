import 'dart:ui';

import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Top Products",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.tealAccent),
              ),
              Text(
                "Brows All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
        GridView.count(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for (int i = 1; i < 9; i++)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "itemPage");
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/$i.png",
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Product Name",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.tealAccent,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Fresh Fruit 2KG",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.tealAccent,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$20",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.tealAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              )
          ],
        )
      ],
    );
  }
}
