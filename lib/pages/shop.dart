import 'package:flutter/material.dart';
import 'package:instagram/utils/shopGrid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text("Shop"),
          Row(
            children: const [
              Icon(Icons.calendar_month),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu),
            ],
          )
        ]),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.grey[400],
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Search",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
          const Expanded(child: ShopGrid())
        ],
      ),
    );
  }
}
