import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/application/theme_bloc/theme_bloc.dart';
import 'package:social_media/global/theme.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/common_appbar.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/theme_data.dart';

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
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18.sm),
              ),
              leading: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                child: Icon(
                  FontAwesomeIcons.mask,
                ),
              ),
              trailing: Switch(
                activeColor: primaryBlue,
                inactiveThumbColor: secondaryBlue,
                onChanged: (value) {},
                value: false,
              ),
            ),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                bool switchValue = false;

                if (state.isDark) {
                  switchValue = true;
                } else {
                  switchValue = false;
                }
                return ListTile(
                  title: Text(
                    state.isDark == true ? "Back To Light" : "Switch To Dark",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 18.sm),
                  ),
                  leading: IconTheme(
                    data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                    child: Icon(
                      state.isDark ? Icons.light_mode : Icons.dark_mode,
                    ),
                  ),
                  trailing: Switch(
                    activeColor: primaryBlue,
                    inactiveThumbColor: secondaryBlue,
                    onChanged: (value) {
                      if (value) {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(SetTheme(currentTheme: MyAppTheme.Dark));
                      } else {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(SetTheme(currentTheme: MyAppTheme.Light));
                      }
                    },
                    value: switchValue,
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                "Edit Profile",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18.sm),
              ),
              leading: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                child: Icon(
                  Icons.account_box,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Terms & Conditions",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18.sm),
              ),
              leading: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                child: Icon(
                  Icons.handshake,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Privacy & Policy",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18.sm),
              ),
              leading: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                child: Icon(
                  Icons.privacy_tip,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Share App",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18.sm),
              ),
              leading: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                child: Icon(
                  FontAwesomeIcons.share,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "About",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18.sm),
              ),
              leading: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                child: Icon(
                  FontAwesomeIcons.info,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18.sm),
              ),
              leading: IconTheme(
                data: Theme.of(context).iconTheme.copyWith(size: 22.sm),
                child: Icon(
                  Icons.logout,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
