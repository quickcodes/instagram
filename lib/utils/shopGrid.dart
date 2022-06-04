import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GridView.builder(
          itemCount: 30,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.pink[100],
              ),
            );
          }),
    );
  }
}
