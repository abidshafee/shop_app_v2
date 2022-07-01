import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_app_v2/models/Category.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Categories",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.tealAccent),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              categories.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CategoryCard(
                  //icon: "assets/images/5.png",
                  icon: categories[index].icon,
                  //title: "Lemonade",
                  title: categories[index].title,
                  press: () {},
                ),
              ),
            ),
          ),
//Previous Layout of Category section
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       for (int i = 1; i < 8; i++)
        //         Container(
        //           margin:
        //               const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        //           height: 50,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: Colors.white,
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.grey.withOpacity(0.5),
        //                 spreadRadius: 1,
        //                 blurRadius: 5,
        //               ),
        //             ],
        //           ),
        //           child: Row(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.all(5),
        //                 child: Image.asset(
        //                   "assets/images/$i.png",
        //                   height: 50,
        //                   width: 50,
        //                 ),
        //               ),
        //               const Padding(
        //                 padding: EdgeInsets.only(right: 5),
        //                 child: Text(
        //                   "Category",
        //                   style: TextStyle(
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         )
        //     ],
        //   ),
        // )
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Column(
            children: [
              Image.asset(
                //"assets/images/5.png",
                icon,
                height: 60,
                width: 60,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }
}
