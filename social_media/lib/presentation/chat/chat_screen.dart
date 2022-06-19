import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/dummy_profile.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/inner_chat_screen/inner_chat_screen.dart';
import 'package:social_media/themes/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ChatBody()),
    );
  }
}

TextEditingController _searchController = TextEditingController();

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800.sm),
      child: Padding(
        padding: constPadding,
        child: Center(
          child: Column(
            children: [
              _SearchTexture(),
              Expanded(
                  child: ListView.separated(
                itemBuilder: (context, index) => ChatTile(),
                separatorBuilder: (context, index) => Divider(
                  color: secondaryBlue,
                ),
                itemCount: 20,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => InnerChatScreen()));
      },
      leading: DummyProfile(),
      title: Text(
        "User Name",
        style: textTheme.bodySmall!
            .copyWith(fontSize: 17.sm, fontWeight: FontWeight.w500),
      ),
      trailing: CircleAvatar(
        backgroundColor: secondaryBlue,
        radius: 15.sm,
        child: Text(
          "10",
          style: textTheme.bodyMedium!.copyWith(fontSize: 12.sm),
        ),
      ),
    );
  }
}

class _SearchTexture extends StatelessWidget {
  const _SearchTexture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CupertinoTextField(
            controller: _searchController,
            padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
            cursorColor: primaryBlue,
            style: TextStyle(color: lightBlack, fontSize: 16.sm),
            decoration: BoxDecoration(
                color: softBg, borderRadius: BorderRadius.circular(4.sm)),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Search",
              style: TextStyle(
                  color: primaryBlue,
                  fontSize: 15.sm,
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
