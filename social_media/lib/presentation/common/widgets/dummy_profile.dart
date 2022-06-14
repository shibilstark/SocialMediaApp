import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/themes/colors.dart';

class DummyProfile extends StatelessWidget {
  const DummyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.sm,
      backgroundColor: secondaryBlue,
      child: Center(
          child: Icon(
        Icons.person,
        color: primaryBlue,
        size: 30.sm,
      )),
    );
  }
}
