import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:social_media/presentation/chat/chat_screen.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/common_appbar.dart';
import 'package:social_media/presentation/common/widgets/field_texture.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/common/widgets/logo_texture.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/new_post/new_post.dart';
import 'package:social_media/presentation/post_screen/post_screen.dart';
import 'package:social_media/presentation/reels/reels_screen.dart';
import 'package:social_media/presentation/search/search_screen.dart';
import 'package:social_media/presentation/sign_up/sign_up_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CommonAppBar(title: "Settings"), preferredSize: appBarHeight),
      body: SettingsBody(),
    );
  }
}

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800.sm),
      child: Center(
          child: Padding(
        padding: constPadding,
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Private Account",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                FontAwesomeIcons.mask,
                color: primaryBlue,
                size: 20.sm,
              ),
              trailing: Switch(
                activeColor: primaryBlue,
                inactiveThumbColor: secondaryBlue,
                onChanged: (value) {},
                value: false,
              ),
            ),
            ListTile(
              title: Text(
                "Edit Profile",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.account_box,
                color: primaryBlue,
                size: 20.sm,
              ),
            ),
            ListTile(
              title: Text(
                "Terms & Conditions",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.handshake,
                color: primaryBlue,
                size: 20.sm,
              ),
            ),
            ListTile(
              title: Text(
                "Privacy & Policy",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.privacy_tip,
                color: primaryBlue,
                size: 20.sm,
              ),
            ),
            ListTile(
              title: Text(
                "Share App",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                FontAwesomeIcons.share,
                color: primaryBlue,
                size: 20.sm,
              ),
            ),
            ListTile(
              title: Text(
                "About",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                FontAwesomeIcons.info,
                color: primaryBlue,
                size: 20.sm,
              ),
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.logout,
                color: primaryBlue,
                size: 20.sm,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
