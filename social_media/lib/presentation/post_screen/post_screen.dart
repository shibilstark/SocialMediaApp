import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/post_screen/post_texture.dart';

final dummyLongText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas posuere pretium. Nam volutpat dictum lorem in volutpat. Aenean convallis ipsum sed sagittis bibendum. Sed ut bibendum velit, a consectetur est. Suspendisse feugiat nulla in felis mollis dignissim et id lectus. Nullam nec massa orci. Curabitur odio tellus, tempus ut imperdiet in, ullamcorper nec nibh. Praesent nisi nunc";

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: constPadding,
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 800.sm),
            child: ListView.separated(
              itemBuilder: (context, index) => PostTexture(),
              separatorBuilder: (context, index) => gap(H: 15.sm),
              itemCount: 10,
            ),
          ),
        ),
      ),
    );
  }
}
