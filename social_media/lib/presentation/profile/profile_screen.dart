import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/profile/profile_post_texture.dart';
import 'package:social_media/presentation/settings/settings_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ProfileAppBar(),
        preferredSize: appBarHeight,
      ),
      body: ProfileBody(),
    );
  }
}

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final iconTheme = Theme.of(context).iconTheme;
    return AppBar(
      titleSpacing: -5.sm,
      title: Text(
        "Profile",
        style: textTheme.titleLarge!.copyWith(fontSize: 22.sm),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: IconTheme(
              data: iconTheme.copyWith(size: 25.sm),
              child: Icon(
                Icons.add_a_photo,
              ),
            )),
        IconButton(
            onPressed: () {},
            icon: IconTheme(
              data: iconTheme.copyWith(size: 30.sm),
              child: Icon(
                Icons.video_call,
              ),
            )),
        IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => SettingsScreen()));
            },
            icon: IconTheme(
              data: iconTheme.copyWith(size: 25.sm),
              child: Icon(
                Icons.settings,
              ),
            )),
      ],
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 800.sm),
        child: Padding(
          padding: constPadding,
          child: ListView(children: [
            AccountInfoAndFollowers(),
            gap(H: 10.sm),
            ProfileStatusText(),
            gap(H: 20.sm),
            ProfileButtons(),
            gap(H: 20.sm),
            Text(
              "Posts",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 20.sm),
            ),
            Divider(
              thickness: 2.sm,
              color: secondaryBlue,
            ),
            Column(
              children: List.generate(20, (index) => ProfilePostTexture()),
            )
          ]),
        ),
      ),
    );
  }
}

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: primaryBlue, onPrimary: whiteColor),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: whiteColor),
                ))),
        gap(W: 20.sm),
        Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryBlue,
                  onPrimary: whiteColor,
                ),
                onPressed: () {},
                child: Text(
                  "Message",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: whiteColor,
                      ),
                ))),
      ],
    );
  }
}

class ProfileStatusText extends StatelessWidget {
  const ProfileStatusText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas posuere pretium. Nam volutpat dictum lorem in volutpat. ",
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(fontSize: 14.sm, fontWeight: FontWeight.normal),
    );
  }
}

class AccountInfoAndFollowers extends StatelessWidget {
  const AccountInfoAndFollowers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final iconTheme = Theme.of(context).iconTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: secondaryBlue,
              radius: 50.sm,
              child: IconTheme(
                data: iconTheme.copyWith(size: 80.sm),
                child: Icon(
                  Icons.person,
                  size: 80.sm,
                  color: primaryBlue,
                ),
              ),
            ),
            gap(H: 20.sm),
            Text(
              "User Name",
              style: textTheme.bodySmall!.copyWith(fontSize: 19),
            ),
            gap(H: 10.sm),
            Text(
              "User Emaiil",
              style: textTheme.bodySmall!.copyWith(fontSize: 14),
            ),
          ],
        ),
        LimitedBox(
          child: Row(
            children: [
              Container(
                height: 70.sm,
                width: 70.sm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Following",
                      style: textTheme.bodyMedium!.copyWith(fontSize: 12.sm),
                    ),
                    Text(
                      "100",
                      style: textTheme.bodyMedium!.copyWith(fontSize: 20.sm),
                    ),
                  ],
                ),
              ),
              gap(W: 15.sm),
              Container(
                height: 70.sm,
                width: 70.sm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Followers",
                      style: textTheme.bodyMedium!.copyWith(fontSize: 12.sm),
                    ),
                    Text(
                      "100",
                      style: textTheme.bodyMedium!.copyWith(fontSize: 20.sm),
                    ),
                  ],
                ),
              ),
              gap(W: 15.sm),
              Container(
                height: 70.sm,
                width: 70.sm,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Posts",
                      style: textTheme.bodyMedium!.copyWith(fontSize: 12.sm),
                    ),
                    Text(
                      "100",
                      style: textTheme.bodyMedium!.copyWith(fontSize: 20.sm),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
