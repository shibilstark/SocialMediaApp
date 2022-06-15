import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/common_appbar.dart';
import 'package:social_media/themes/colors.dart';

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
          children: List.generate(_tiles.length, (index) => _tiles[index]),
        ),
      )),
    );
  }
}

final _tiles = [
  ListTile(
    title: Text(
      "Private Account",
      style: TextStyle(
          color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
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
          color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
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
          color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
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
          color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
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
          color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
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
          color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
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
          color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
    ),
    leading: Icon(
      Icons.logout,
      color: primaryBlue,
      size: 20.sm,
    ),
  ),
];
