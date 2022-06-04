import 'package:flutter/material.dart';
import 'package:instagram/utils/bubbleStories.dart';
import 'package:instagram/utils/shopGrid.dart';

import 'big_avatar_user_widget.dart';
import 'menu_item_widget.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({ Key? key }) : super(key: key);

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


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Column(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(left: 0.0, top: 20.0),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               // Profile Picture 
  //               Container(
  //                 height: 100,
  //                 width: 100,
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.circle,
  //                   color: Colors.grey[300],
  //                 ),
  //               ),

  //               Expanded(
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
                      
  //                     // Number of posts, Followers, Following
  //                     Column(
  //                       children: [
  //                         // Number of posts, Followers, Following
  //                         Text("273", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
  //                         Text("Posts"),
  //                       ],
  //                     ),
  //                     // Number of posts, Followers, Following
  //                     Column(
  //                       children: [
  //                         // Number of posts, Followers, Following
  //                         Text("5763", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
  //                         Text("Followers"),
  //                       ],
  //                     ),
  //                     // Number of posts, Followers, Following
  //                     Column(
  //                       children: [
  //                         // Number of posts, Followers, Following
  //                         Text("57", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
  //                         Text("Following"),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),

  //             ],
  //           ),
  //         ),


  //         Padding(
  //           padding: const EdgeInsets.all(20.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               // Name or bio
  //               Text(
  //                 "Dhruv",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(vertical: 2.0),
  //                 child: Text(
  //                   "I create apps & games",
  //                   // style: TextStyle(fontWeight: FontWeight.bold),
  //                 ),
  //               ),
  //               Text(
  //                 "www.instagram.com/dhruvsoni.sh",
  //                 style: TextStyle(color: Colors.blue),
  //               ),
  //             ],
  //           ),
  //         ),

  //       ],
  //     ),



  //   );
  // }




  @override
  Widget build(BuildContext context) {
    return Material(
      
      color: Theme.of(context).cardColor,
      child: Column(
        children: <Widget>[

        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text("Instagram"),
              Row(children: const [
                Icon(Icons.add),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.menu),
              ])
            ]
          ),
        ),


        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  BigAvatarUserWidget(),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('Đặng Ngọc Đức', style: Theme.of(context).textTheme.bodyText2,),
                  )
                ],
              ),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: MenuItemWidget(title: '146', content: 'Post',)),
                        Expanded(child: MenuItemWidget(title: '130', content: 'Followers',)),
                        Expanded(child: MenuItemWidget(title: '146', content: 'Following',))
                      ],
                    ),
                  )
              )
            ],
          ),
        ),

        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text('Mastering B&W: The Art of B&W \nEditor: @dangngocduc Mod: @dangngocduc @dangngocduc \nFounder: @dangngocduc',
            style: Theme.of(context).textTheme.bodyText1,),
        ),

        Container(
          padding: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 16
          ),
          width: double.infinity,
          child: OutlineButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))
            ),
            onPressed: (){},
            child: Text('Edit Profile', style: Theme.of(context).textTheme.subtitle2,),
          ),
        ),


        

          // Stories
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
            child: Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(name: people[index]);
                },
              ),
            ),
          ),

          
          // Posts, Reels, Saved menu
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon(Icons.post_add),
                Icon(Icons.view_module_outlined),
                Icon(Icons.slow_motion_video_rounded),
                Icon(Icons.save_rounded),
              ]
            )
          ),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.builder(
                  itemCount: 30,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        color: Colors.grey[300],
                      ),
                    );
                  }),
            )
          ),





      ],),
    );
  }





}