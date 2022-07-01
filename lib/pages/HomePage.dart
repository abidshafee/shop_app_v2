import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';
import '../widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF00A368),
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 2,
                          ),
                        ]),
                    child: Badge(
                      badgeColor: Colors.red,
                      padding: const EdgeInsets.all(6),
                      badgeContent: const Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome to ShopAppV2",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //Text(
                  //  "Search an Item: ",
                  //  style: TextStyle(color: Colors.white, fontSize: 20),
                  //),
                ],
              ),
            ),
            //Search Bar
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search an Item Here",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.filter_list),
                ],
              ),
            ),
            //Products Widgets
            Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CategoriesWidget(),
                  PopularItemsWidget(),
                  ItemsWidget(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
