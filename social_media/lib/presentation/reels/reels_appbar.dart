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

final _dropItems = [
  "Report",
];
DropdownMenuItem<String> _buildMenuItem(String item) {
  return DropdownMenuItem(
    child: Text(item),
    value: item,
  );
}

class ReelsAppBar extends StatelessWidget {
  const ReelsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: whiteColor,
      title: Text(
        "Cutz",
        style: mainAppBarTitile.copyWith(color: whiteColor),
      ),
      titleSpacing: -5.sm,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
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
              color: whiteColor,
            ),
          ),
        ),
        gap(W: 15.sm),
      ],
    );
  }
}
