import 'package:flutter/material.dart';
import 'package:instagram/utils/bubbleStories.dart';
import 'package:instagram/utils/userPosts.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  List get people => [
        "Dhruv",
        "Ranveer",
        "Dhanraj",
        "Purshottam",
        "Ram",
        "Lakhan",
        "Sita",
        "Gita",
        "Babita"
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Instagram"),
          Row(children: [
            Icon(Icons.add),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.favorite),
            ),
            Icon(Icons.share),
          ])
        ]),
      ),
      body: Column(children: [
        // Stories
        Container(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: (context, index) {
              return BubbleStories(name: people[index]);
            },
          ),
        ),
        // Posts
        Expanded(child: 
          ListView.builder(
              itemCount: people.length,
              itemBuilder: ((context, index) {
                return UserPost(name: people[index]);
              })),
        ),
      ]),
    );
  }
}
