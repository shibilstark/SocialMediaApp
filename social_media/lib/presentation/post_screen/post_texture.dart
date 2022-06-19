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
      style: Theme.of(context).textTheme.bodyMedium,
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
      lessStyle: Theme.of(context).textTheme.bodyMedium,
      moreStyle: Theme.of(context).textTheme.bodyMedium,
      style: Theme.of(context).textTheme.bodySmall,
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
                      icon: IconTheme(
                        data: Theme.of(context).iconTheme.copyWith(
                              size: 30.sm,
                            ),
                        child: Icon(
                          Icons.favorite_outline,
                        ),
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CommentScreen()));
                      },
                      icon: IconTheme(
                        data: Theme.of(context).iconTheme.copyWith(
                              size: 30.sm,
                            ),
                        child: Icon(
                          Icons.comment,
                        ),
                      ))
                ],
              ),
            ),
            Spacer(),
            Text(
              "12/03/2030",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        Text(
          "1000 Likes",
          style: Theme.of(context).textTheme.bodyMedium,
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
                  child: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(
                      size: 30.sm,
                    ),
                child: Icon(
                  Icons.person,
                ),
              )),
            ),
            gap(W: 10.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sm,
                      ),
                ),
                Text(
                  "Follow",
                  style: Theme.of(context).textTheme.bodyMedium,
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
            icon: IconTheme(
              data: Theme.of(context).iconTheme.copyWith(size: 18),
              child: Icon(
                Icons.more_vert,
              ),
            ),
          ),
        )
      ],
    );
  }
}
