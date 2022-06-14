import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ProfileAppBar(),
        preferredSize: appBarHeight,
      ),
      body: ProfileBody(),
    );
  }
}

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -5.sm,
      title: Text(
        "Profile",
        style: mainAppBarTitile.copyWith(fontSize: 22.sm),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_a_photo,
              color: primaryBlue,
              size: 25.sm,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: primaryBlue,
              size: 30.sm,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: primaryBlue,
              size: 25.sm,
            )),
      ],
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800.sm),
      child: Center(
        child: Padding(
          padding: constPadding,
          child: ListView(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: secondaryBlue,
                      radius: 50.sm,
                      child: Icon(
                        Icons.person,
                        size: 80.sm,
                        color: primaryBlue,
                      ),
                    ),
                    gap(H: 20.sm),
                    Text(
                      "User Name",
                      style: TextStyle(
                        fontSize: 20.sm,
                        fontWeight: FontWeight.w600,
                        color: lightBlack,
                      ),
                    ),
                    gap(H: 10.sm),
                    Text(
                      "User Emaiil",
                      style: TextStyle(
                        fontSize: 13.sm.sm.sm,
                        overflow: TextOverflow.fade,
                        fontWeight: FontWeight.w600,
                        color: lightBlack,
                      ),
                    ),
                  ],
                ),
                LimitedBox(
                  child: Row(
                    children: [
                      Container(
                        height: 70.sm,
                        width: 70.sm,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Following",
                              style: mainAppBarTitile.copyWith(
                                  fontSize: 12.sm, color: primaryBlue),
                            ),
                            Text(
                              "100",
                              style: mainAppBarTitile.copyWith(
                                  fontSize: 20.sm, color: primaryBlue),
                            ),
                          ],
                        ),
                      ),
                      gap(W: 15.sm),
                      Container(
                        height: 70.sm,
                        width: 70.sm,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Followers",
                              style: mainAppBarTitile.copyWith(
                                  fontSize: 12.sm, color: primaryBlue),
                            ),
                            Text(
                              "100",
                              style: mainAppBarTitile.copyWith(
                                  fontSize: 20.sm, color: primaryBlue),
                            ),
                          ],
                        ),
                      ),
                      gap(W: 15.sm),
                      Container(
                        height: 70.sm,
                        width: 70.sm,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Posts",
                              style: mainAppBarTitile.copyWith(
                                  fontSize: 12.sm, color: primaryBlue),
                            ),
                            Text(
                              "100",
                              style: mainAppBarTitile.copyWith(
                                  fontSize: 20.sm, color: primaryBlue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            gap(H: 10.sm),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas posuere pretium. Nam volutpat dictum lorem in volutpat. ",
              style: TextStyle(
                  fontSize: 16.sm,
                  fontWeight: FontWeight.w400,
                  color: primaryBlue),
            ),
            gap(H: 20.sm),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: primaryBlue, onPrimary: whiteColor),
                        onPressed: () {},
                        child: Text("Follow"))),
                gap(W: 20.sm),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: primaryBlue, onPrimary: whiteColor),
                        onPressed: () {},
                        child: Text("Message"))),
              ],
            ),
            gap(H: 20.sm),
            Text(
              "Posts",
              style: mainAppBarTitile.copyWith(fontSize: 18.sm),
            ),
            Divider(
              thickness: 2.sm,
              color: secondaryBlue,
            ),
            Column(
              children: List.generate(20, (index) => ProfilePostTexture()),
            )
          ]),
        ),
      ),
    );
  }
}

final _dropItems = ["Edit", "Delete"];
DropdownMenuItem<String> _buildMenuItem(String item) {
  return DropdownMenuItem(
    child: Text(item),
    value: item,
  );
}

class ProfilePostTexture extends StatelessWidget {
  const ProfilePostTexture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              LimitedBox(
                  child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.sm,
                    backgroundColor: secondaryBlue,
                    child: Center(
                        child: Icon(
                      Icons.person,
                      color: primaryBlue,
                      size: 30.sm,
                    )),
                  ),
                  gap(W: 10.sm),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "User Name",
                        style: TextStyle(
                            color: lightBlack,
                            fontSize: 18.sm,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                            color: primaryBlue,
                            fontSize: 13.sm,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )),
              Spacer(),
              // IconButton(
              //     onPressed: () {

              //     },
              //     icon: Icon(
              //       Icons.more_vert,
              //       color: lightBlack,
              //       size: 20.sm,
              //     ))
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  items: _dropItems.map(_buildMenuItem).toList(),
                  onChanged: (value) {
                    // value == "Edit"
                    //     ? Navigator.of(context).pop()
                    //     : Navigator.of(context).push(MaterialPageRoute(
                    //         builder: (ctx) => TestScreen()));
                  },
                  icon: Icon(
                    Icons.more_vert,
                    size: 20.sm,
                    color: lightBlack,
                  ),
                ),
              )
            ],
          ),
          gap(H: 10.sm),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.sm),
            child: Container(
              child: Image.asset(
                "assets/dummy/2.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          gap(H: 10.sm),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LimitedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          size: 30.sm,
                          color: primaryBlue,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          size: 30.sm,
                          color: primaryBlue,
                        ))
                  ],
                ),
              ),
              Spacer(),
              Text(
                "12/03/2030",
                style: TextStyle(
                    color: primaryBlue,
                    fontSize: 12.sm,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          // ExpandablePanel(
          //   theme: ExpandableThemeData(
          //     tapBodyToCollapse: true,
          //     tapBodyToExpand: true,
          //     headerAlignment: ExpandablePanelHeaderAlignment.center,
          //   ),
          //   header: Text(
          //     "100 Likes",
          //     style: TextStyle(
          //         color: primaryBlue,
          //         fontWeight: FontWeight.w600,
          //         fontSize: 12.sm),
          //   ),
          //   collapsed: Text(
          //     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas posuere pretium. Nam volutpat dictum lorem in volutpat. Aenean convallis ipsum sed sagittis bibendum. Sed ut bibendum velit, a consectetur est. Suspendisse feugiat nulla in felis mollis dignissim et id lectus. Nullam nec massa orci. Curabitur odio tellus, tempus ut imperdiet in, ullamcorper nec nibh. Praesent nisi nunc,",
          //     style: TextStyle(
          //       color: lightBlack,
          //       fontSize: 14.sm,
          //     ),
          //     overflow: TextOverflow.fade,
          //     maxLines: 3,
          //   ),
          //   expanded: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas posuere pretium. Nam volutpat dictum lorem in volutpat. Aenean convallis ipsum sed sagittis bibendum. Sed ut bibendum velit, a consectetur est. Suspendisse feugiat nulla in felis mollis dignissim et id lectus. Nullam nec massa orci. Curabitur odio tellus, tempus ut imperdiet in, ullamcorper nec nibh. Praesent nisi nunc",
          //         style: TextStyle(
          //           color: lightBlack,
          //           fontSize: 14.sm,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          ReadMoreText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas posuere pretium. Nam volutpat dictum lorem in volutpat. Aenean convallis ipsum sed sagittis bibendum. Sed ut bibendum velit, a consectetur est. Suspendisse feugiat nulla in felis mollis dignissim et id lectus. Nullam nec massa orci. Curabitur odio tellus, tempus ut imperdiet in, ullamcorper nec nibh. Praesent nisi nunc",
            trimMode: TrimMode.Line,
            trimLines: 3,
            trimCollapsedText: 'Read More',
            trimExpandedText: 'Read Less',
            lessStyle: TextStyle(
              color: primaryBlue,
              fontSize: 14.sm,
            ),
            moreStyle: TextStyle(
              color: primaryBlue,
              fontSize: 14.sm,
            ),
            style: TextStyle(
              color: lightBlack,
              fontSize: 14.sm,
            ),
          ),
          gap(H: 4.sm),
          Text(
            "#tag",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: primaryBlue,
              fontSize: 14.sm,
            ),
          ),
          gap(H: 20.sm)
        ],
      ),
    );
  }
}
// "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"