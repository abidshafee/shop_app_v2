import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A368),
      body: SafeArea(
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
                      color: const Color(0xFF00A368),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 2,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      CupertinoIcons.cart,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
