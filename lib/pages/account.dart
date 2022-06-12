import 'package:flutter/material.dart';
import 'package:instagram/util/account_tab1.dart';
import 'package:instagram/util/account_tab2.dart';
import 'package:instagram/util/account_tab3.dart';
import 'package:instagram/util/account_tab4.dart';

import 'package:instagram/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    var accountTab1 = AccountTab1;
    var accountTab12 = AccountTab1;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
              ),
              Column(
                children: [
                  Text(
                    "237",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Posts")
                ],
              ),
              Column(
                children: [
                  Text(
                    "3000",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Followers")
                ],
              ),
              Column(
                children: [
                  Text(
                    "30",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Following")
                ],
              ),
            ],
          ),
        ),
        buildProfileWidget()
      ],
    ));
  }

  Column buildProfileWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Neha",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      "Animator",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Text(
                    "Today's Fact",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRect(
                clipBehavior: Clip.hardEdge,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(child: Text("Edit Profile")),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(child: Text("Ad Tools")),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(child: Text("Insightes")),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BubbleStories(text: "Story-1"),
              BubbleStories(text: "Story-2"),
              BubbleStories(text: "Story-3"),
              BubbleStories(text: "Story-4")
            ],
          ),
        ),
        Expanded(child: Container())
        // TabBar(tabs: [
        //   Tab(
        //     icon: Icon(Icons.grid_3x3_outlined),
        //   ),
        //   Tab(
        //     icon: Icon(Icons.video_call),
        //   ),
        //   Tab(
        //     icon: Icon(Icons.shop),
        //   ),
        //   Tab(
        //     icon: Icon(Icons.person),
        //   )
        // ]),
        // ListView(
        //   children: [
        //     Container(
        //       height: 300,
        //       child: TabBarView(children: [
        //         Container(
        //           color: Colors.amber,
        //         ),
        //         Container(
        //           color: Color.fromARGB(255, 15, 7, 255),
        //         ),
        //         Container(
        //           color: Color.fromARGB(255, 255, 7, 152),
        //         ),
        //         Container(
        //           color: Color.fromARGB(255, 28, 255, 7),
        //         )
        //         //   AccountTab1(),
        //         //   AccountTab2(),
        //         //   AccountTab3(),
        //         //   AccountTab4()
        //       ]),
        //     ),
        //   ],
        // )
      ],
    );
  }
}
