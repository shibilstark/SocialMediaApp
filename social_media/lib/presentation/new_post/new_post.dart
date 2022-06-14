import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(child: NewPostAppBar(), preferredSize: appBarHeight),
      body: NewPostBody(),
    );
  }
}

class NewPostAppBar extends StatelessWidget {
  const NewPostAppBar({Key? key}) : super(key: key);

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
        "Add New Post",
        style: mainAppBarTitile.copyWith(fontSize: 22.sm),
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Post",
              style: TextStyle(
                  color: primaryBlue,
                  fontSize: 15.sm,
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}

TextEditingController _discriptionController = TextEditingController();
TextEditingController _tagController = TextEditingController();

class NewPostBody extends StatelessWidget {
  const NewPostBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 800.sm),
        child: Padding(
          padding: constPadding,
          child: ListView(
            children: [
              CommandTexture(title: "Pick Image"),
              gap(H: 10.sm),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    constraints:
                        BoxConstraints(maxWidth: 800.sm, maxHeight: 640.sm),
                    width: double.infinity,
                    height: 200.sm,
                    decoration: BoxDecoration(
                      color: softBg,
                      borderRadius: BorderRadius.circular(10.sm),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.sm),
                    child: SizedBox(
                      height: 50.sm,
                      width: 50.sm,
                      child: Center(
                        child: FloatingActionButton(
                          backgroundColor: primaryBlue,
                          foregroundColor: whiteColor,
                          onPressed: () {},
                          child: Icon(Icons.add_a_photo),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              gap(H: 20.sm),
              CommandTexture(title: "Discription"),
              gap(H: 10.sm),
              SizedBox(
                height: 100.sm,
                child: CupertinoTextField(
                  maxLength: 500,
                  controller: _discriptionController,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
                  cursorColor: primaryBlue,
                  style: TextStyle(color: lightBlack, fontSize: 16.sm),
                  decoration: BoxDecoration(
                      color: softBg, borderRadius: BorderRadius.circular(4.sm)),
                ),
              ),
              gap(H: 20.sm),
              CommandTexture(title: "Tag"),
              gap(H: 10.sm),
              CupertinoTextField(
                maxLength: 30,
                controller: _discriptionController,
                padding:
                    EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
                cursorColor: primaryBlue,
                style: TextStyle(color: lightBlack, fontSize: 16.sm),
                decoration: BoxDecoration(
                    color: softBg, borderRadius: BorderRadius.circular(4.sm)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommandTexture extends StatelessWidget {
  final String title;
  const CommandTexture({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 15.sm,
        fontWeight: FontWeight.w500,
        color: lightBlack,
      ),
    );
  }
}

class HintText extends StatelessWidget {
  final String title;
  const HintText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 13.sm,
        fontWeight: FontWeight.w500,
        color: primaryBlue,
      ),
    );
  }
}