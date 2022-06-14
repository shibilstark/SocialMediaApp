import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/themes/styles.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  const CommonAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.of(context).pop();
      //   },
      //   icon: Icon(Icons.arrow_left),
      // ),
      titleSpacing: -5.sm,

      title: Text(
        title,
        style: mainAppBarTitile.copyWith(fontSize: 22.sm),
      ),
    );
  }
}
