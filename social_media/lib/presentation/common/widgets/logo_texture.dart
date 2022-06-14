import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/chat/chat_screen.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/new_post/new_post.dart';
import 'package:social_media/presentation/post_screen/post_screen.dart';
import 'package:social_media/presentation/reels/reels_screen.dart';
import 'package:social_media/presentation/search/search_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class LogoTexture extends StatelessWidget {
  const LogoTexture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 120.sm,
          width: 120.sm,
          decoration: BoxDecoration(
              color: whiteColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.sm)),
        ),
        gap(H: 10.sm),
        Text(
          "Application Name",
          style: mainAppBarTitile,
        )
      ]),
    );
  }
}
