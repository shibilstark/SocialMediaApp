import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media/presentation/comment_screen/comment_screen.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/themes/colors.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: constPadding,
        child: ListView.separated(
          itemBuilder: (context, index) => PostTexture(),
          separatorBuilder: (context, index) => gap(H: 15.sm),
          itemCount: 10,
        ),
      ),
    );
  }
}

final dropItems = [
  "Report",
];
DropdownMenuItem<String> _buildMenuItem(String item) {
  return DropdownMenuItem(
    child: Text(item),
    value: item,
  );
}

class PostTexture extends StatelessWidget {
  const PostTexture({Key? key}) : super(key: key);

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
                  items: dropItems.map(_buildMenuItem).toList(),
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
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CommentScreen()));
                        },
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
          )
        ],
      ),
    );
  }
}
// "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"