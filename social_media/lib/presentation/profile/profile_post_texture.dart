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
import 'package:social_media/presentation/profile/profile_post_texture.dart';
import 'package:social_media/presentation/settings/settings_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

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
                  icon: IconTheme(
                    data: Theme.of(context).iconTheme.copyWith(size: 18),
                    child: Icon(
                      Icons.more_vert,
                    ),
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
          gap(H: 10.sm),
          ReadMoreText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas posuere pretium. Nam volutpat dictum lorem in volutpat. Aenean convallis ipsum sed sagittis bibendum. Sed ut bibendum velit, a consectetur est. Suspendisse feugiat nulla in felis mollis dignissim et id lectus. Nullam nec massa orci. Curabitur odio tellus, tempus ut imperdiet in, ullamcorper nec nibh. Praesent nisi nunc",
            trimMode: TrimMode.Line,
            trimLines: 3,
            trimCollapsedText: 'Read More',
            trimExpandedText: 'Read Less',
            lessStyle: Theme.of(context).textTheme.bodyMedium,
            moreStyle: Theme.of(context).textTheme.bodyMedium,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          gap(H: 4.sm),
          Text(
            "#tag",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          gap(H: 20.sm)
        ],
      ),
    );
  }
}
// "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"

final _dropItems = ["Edit", "Delete"];
DropdownMenuItem<String> _buildMenuItem(String item) {
  return DropdownMenuItem(
    child: Text(item),
    value: item,
  );
}
