import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/chat/chat_screen.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/new_post/new_post.dart';
import 'package:social_media/presentation/notifications/notifications_screen.dart';
import 'package:social_media/presentation/post_screen/post_screen.dart';
import 'package:social_media/presentation/profile/profile_screen.dart';
import 'package:social_media/presentation/reels/reels_screen.dart';
import 'package:social_media/presentation/search/search_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: appBarHeight, child: MainAppBar()),
      body: ValueListenableBuilder(
          valueListenable: _bottomNav,
          builder: (BuildContext context, int val, _) {
            return SafeArea(child: _screeens[_bottomNav.value]);
          }),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}

final _screeens = [
  PostScreen(),
  ReelsScreen(),
  NewPostScreen(),
  SearchScreen(),
  ChatScreen()
];

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      automaticallyImplyLeading: false,
      title: Text(
        "Application Name",
        style: mainAppBarTitile,
      ),
      actions: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => NotificationScreen()));
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: primaryBlue,
                    size: 25.sm,
                  )),
            ),
            CircleAvatar(
              radius: 8.sm,
              backgroundColor: secondaryBlue,
              child: Text(
                "10+",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 8.sm,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => ProfileScreen()));
          },
          child: CircleAvatar(
            backgroundColor: secondaryBlue,
            radius: 20.sm,
            child: Icon(
              Icons.person,
              size: 25.sm,
              color: primaryBlue,
            ),
          ),
        ),
        gap(W: 15.sm)
      ],
    );
  }
}

ValueNotifier<int> _bottomNav = ValueNotifier(0);

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _bottomNav,
      builder: (BuildContext context, int index, _) {
        return SizedBox(
          height: 60.sm,
          child: BottomNavigationBar(
              currentIndex: _bottomNav.value,
              onTap: (value) {
                if (value == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => ReelsScreen()));
                } else if (value == 2) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => NewPostScreen()));
                } else {
                  _bottomNav.value = value;
                  _bottomNav.notifyListeners();
                }
              },
              selectedIconTheme: IconThemeData(color: primaryBlue, size: 21.sm),
              unselectedIconTheme: IconThemeData(
                  color: primaryBlue.withOpacity(0.5), size: 19.sm),
              selectedFontSize: 12.sm,
              iconSize: 26.sm,
              backgroundColor: whiteColor,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.house,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.film),
                  label: "Cutz",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_photo_alternate),
                  label: "Add New Post",
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.forum),
                  label: "Chats",
                ),
              ]),
        );
      },
    );
  }
}
