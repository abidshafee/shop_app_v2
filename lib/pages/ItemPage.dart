import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 400,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: const BoxDecoration(
                color: Colors.amberAccent,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/cover.png",
                  ),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.teal,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
