import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/common_appbar.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CommonAppBar(
          title: "Notifications",
        ),
        preferredSize: appBarHeight,
      ),
      body: NotificationBody(),
    );
  }
}

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: constPadding,
      child: Container(
        constraints: BoxConstraints(maxWidth: 800.sm),
        child: Center(
          child: ListView.separated(
              itemBuilder: (context, index) => NotificationTile(),
              separatorBuilder: (context, index) => gap(H: 10.sm),
              itemCount: 5),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final iconTheme = Theme.of(context).iconTheme;
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.sm,
              backgroundColor: secondaryBlue,
              child: Center(
                  child: IconTheme(
                data: iconTheme.copyWith(size: 30),
                child: Icon(
                  Icons.person,
                ),
              )),
            ),
            gap(W: 10.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style: textTheme.bodySmall!.copyWith(
                    fontSize: 18.sm,
                  ),
                ),
                Text(
                  "Follow",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            )
          ],
        ),
        gap(H: 10.sm),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget urna ornare, varius ante eu, semper lacus. Aliquam sollicitudin mattis congue. In vitae consectetur sem, nec luctus lorem. Curabitur ut nisl in sapien tincidunt commodo. Nulla consequat leo id suscipit convallis. Mauris vel erat vitae massa mattis scelerisque at sit amet metus. Nullam risus elit",
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
