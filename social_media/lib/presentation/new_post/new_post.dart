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
      titleSpacing: -5.sm,
      title: Text(
        "Add New Post",
        style:
            Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 25.sm),
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Post",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 19),
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
              PickImageToPost(),
              gap(H: 20.sm),
              CommandTexture(title: "Discription"),
              gap(H: 10.sm),
              PostDiscription(),
              gap(H: 20.sm),
              CommandTexture(title: "Tag"),
              gap(H: 10.sm),
              PostTag(),
            ],
          ),
        ),
      ),
    );
  }
}

class PostTag extends StatelessWidget {
  const PostTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      maxLength: 30,
      controller: _discriptionController,
      padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
      cursorColor: primaryBlue,
      style: TextStyle(color: lightBlack, fontSize: 16.sm),
      decoration: BoxDecoration(
          color: softBg, borderRadius: BorderRadius.circular(4.sm)),
    );
  }
}

class PostDiscription extends StatelessWidget {
  const PostDiscription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.sm,
      child: CupertinoTextField(
        maxLength: 500,
        controller: _discriptionController,
        padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
        cursorColor: primaryBlue,
        style: TextStyle(color: lightBlack, fontSize: 16.sm),
        decoration: BoxDecoration(
            color: softBg, borderRadius: BorderRadius.circular(4.sm)),
      ),
    );
  }
}

class PickImageToPost extends StatelessWidget {
  const PickImageToPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 800.sm, maxHeight: 640.sm),
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
      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 14),
    );
  }
}
