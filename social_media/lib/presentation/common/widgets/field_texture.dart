import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class FieldTexture extends StatelessWidget {
  final TextEditingController controller;
  const FieldTexture({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextFieldTitleStyle,
        ),
        gap(H: 5.sm),
        CupertinoTextField(
          controller: controller,
          padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
          cursorColor: primaryBlue,
          style: TextStyle(color: lightBlack, fontSize: 16.sm),
          decoration: BoxDecoration(
              color: softBg, borderRadius: BorderRadius.circular(4.sm)),
        ),
      ],
    );
  }
}
