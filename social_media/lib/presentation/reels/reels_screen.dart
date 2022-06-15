import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/dummy_profile.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/reels/bottom_sheet.dart';
import 'package:social_media/presentation/reels/reels_appbar.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';
import 'package:video_player/video_player.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlack,
      appBar: PreferredSize(
        child: ReelsAppBar(),
        preferredSize: appBarHeight,
      ),
      body: ReelsBody(),
      bottomSheet: ReelsBottomSheet(),
    );
  }
}

class ReelsBody extends StatelessWidget {
  const ReelsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80.sm),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 800.sm),
          child: Stack(
            children: [],
          ),
        ),
      ),
    );
  }
}
