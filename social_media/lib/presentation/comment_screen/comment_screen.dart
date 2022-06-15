import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/common_appbar.dart';
import 'package:social_media/presentation/common/widgets/dummy_profile.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/inner_chat_screen/inner_chat_screen.dart';
import 'package:social_media/presentation/post_screen/post_screen.dart';
import 'package:social_media/presentation/search/search_screen.dart';
import 'package:social_media/themes/colors.dart';

final _dropItems = [
  "Report",
];
DropdownMenuItem<String> _buildMenuItem(String item) {
  return DropdownMenuItem(
    child: Text(item),
    value: item,
  );
}

class CommentScreen extends StatelessWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CommonAppBar(title: "Comments"), preferredSize: appBarHeight),
      body: CommentBody(),
    );
  }
}

class CommentBody extends StatelessWidget {
  const CommentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800.sm),
      child: Center(
          child: Padding(
        padding: constPadding,
        child: Column(
          children: [
            CommentPostView(),
            Expanded(child: Container()),
            CommentTexture()
          ],
        ),
      )),
    );
  }
}

TextEditingController _searchController = TextEditingController();

class CommentTexture extends StatelessWidget {
  const CommentTexture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CupertinoTextField(
            controller: _searchController,
            padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
            cursorColor: primaryBlue,
            style: TextStyle(color: lightBlack, fontSize: 16.sm),
            decoration: BoxDecoration(
                color: softBg, borderRadius: BorderRadius.circular(4.sm)),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Post",
              style: TextStyle(
                  color: primaryBlue,
                  fontSize: 15.sm,
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}

class CommentPostView extends StatelessWidget {
  const CommentPostView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(sizeCurve: Curves.ease),
      header: Row(
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
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              items: _dropItems.map(_buildMenuItem).toList(),
              onChanged: (value) {},
              icon: Icon(
                Icons.more_vert,
                size: 20.sm,
                color: lightBlack,
              ),
            ),
          )
        ],
      ),
      collapsed: Container(
        child: ReadMoreText(
          dummyLongText,
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
      ),
      expanded: Container(
        child: Column(
          children: [
            ReadMoreText(
              dummyLongText,
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
          ],
        ),
      ),
    );
  }
}
