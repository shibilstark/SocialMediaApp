import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media/presentation/comment_screen/comment_screen.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/post_screen/post_screen.dart';
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

class PostTexture extends StatelessWidget {
  const PostTexture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserInfoRow(),
          gap(H: 10.sm),
          PostImage(),
          gap(H: 10.sm),
          LikeAndCommentRow(),
          PostDiscription(),
          gap(H: 4.sm),
          PostTag()
        ],
      ),
    );
  }
}

class PostTag extends StatelessWidget {
  const PostTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "#tag",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: primaryBlue,
        fontSize: 14.sm,
      ),
    );
  }
}

class PostDiscription extends StatelessWidget {
  const PostDiscription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
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
    );
  }
}
//  Like, Comment and date Block

class LikeAndCommentRow extends StatelessWidget {
  const LikeAndCommentRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Text(
          "1000 Likes",
          style: TextStyle(
            color: primaryBlue,
            fontSize: 14.sm,
            fontWeight: FontWeight.w600,
          ),
        ),
        gap(H: 10.sm)
      ],
    );
  }
}

//  The image in the Post

class PostImage extends StatelessWidget {
  const PostImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.sm),
      child: Container(
        child: Image.asset(
          "assets/dummy/2.jpg",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

// User Information and The Report Button

class UserInfoRow extends StatelessWidget {
  const UserInfoRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
