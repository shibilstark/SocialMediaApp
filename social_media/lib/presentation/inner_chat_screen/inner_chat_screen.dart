import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/dummy_profile.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class InnerChatScreen extends StatelessWidget {
  const InnerChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBlue,
      appBar: PreferredSize(
        child: InnerChatAppBar(),
        preferredSize: appBarHeight,
      ),
      body: Center(child: ChatsBody()),
    );
  }
}

class ChatsBody extends StatelessWidget {
  const ChatsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800.sm),
      child: Center(
          child: Padding(
        padding: constPadding,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView(),
              ),
              ChatTextField()
            ],
          ),
        ),
      )),
    );
  }
}

class InnerChatAppBar extends StatelessWidget {
  const InnerChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: -5.sm,
      title: Text(
        "Messenger Name",
        style:
            Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22.sm),
      ),
      actions: [DummyProfile(), gap(W: 15.sm)],
    );
  }
}

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CupertinoTextField(
            // controller: _searchController,
            padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
            cursorColor: primaryBlue,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontSize: 16.sm),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(4.sm)),
          ),
        ),
        IconButton(
          onPressed: () {},
          // child: Text(
          //   "Send",
          //   style: TextStyle(
          //       color: primaryBlue,
          //       fontSize: 15.sm,
          //       fontWeight: FontWeight.w600),
          // )
          icon: Icon(
            Icons.send,
            size: 25.sm,
            color: primaryBlue,
          ),
        )
      ],
    );
  }
}
