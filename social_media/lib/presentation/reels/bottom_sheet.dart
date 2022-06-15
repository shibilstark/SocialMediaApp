import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/dummy_profile.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';
import 'package:video_player/video_player.dart';

class ReelsBottomSheet extends StatelessWidget {
  const ReelsBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(10.0.sm),
      height: 80.sm,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LimitedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DummyProfile(),
                gap(W: 10.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: whiteColor,
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
            ),
          ),
          Spacer(),
          LimitedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      size: 30.sm,
                      color: whiteColor,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                      size: 30.sm,
                      color: whiteColor,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
