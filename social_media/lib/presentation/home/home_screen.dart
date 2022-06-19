import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/application/theme_bloc/theme_bloc.dart';
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
      appBar:
          PreferredSize(preferredSize: appBarHeight, child: const MainAppBar()),
      body: ValueListenableBuilder(
          valueListenable: _bottomNav,
          builder: (BuildContext context, int val, _) {
            return SafeArea(child: _screeens[_bottomNav.value]);
          }),
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}

final _screeens = [
  const PostScreen(),
  const ReelsScreen(),
  const NewPostScreen(),
  const SearchScreen(),
  const ChatScreen()
];

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: secondaryBlue,
      elevation: 2,
      automaticallyImplyLeading: false,
      title: Text(
        "Application Name",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const NotificationScreen()));
                  },
                  icon: IconTheme(
                    data: Theme.of(context).iconTheme,
                    child: Icon(
                      Icons.notifications,
                    ),
                  )),
            ),
            CircleAvatar(
              radius: 8.sm,
              backgroundColor: secondaryBlue,
              child: Text(
                "10+",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 8.sm),
              ),
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const ProfileScreen()));
          },
          child: CircleAvatar(
            backgroundColor: secondaryBlue,
            radius: 20.sm,
            child: IconTheme(
              data: Theme.of(context).iconTheme,
              child: Icon(
                Icons.person,
              ),
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
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: _bottomNav,
          builder: (BuildContext context, int index, _) {
            return SizedBox(
              height: 60.sm,
              child: BottomNavigationBar(
                  currentIndex: _bottomNav.value,
                  onTap: (value) {
                    if (value == 1) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const ReelsScreen()));
                    } else if (value == 2) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const NewPostScreen()));
                    } else {
                      _bottomNav.value = value;
                      _bottomNav.notifyListeners();
                    }
                  },
                  selectedIconTheme:
                      Theme.of(context).iconTheme.copyWith(size: 21),
                  unselectedIconTheme: state.isDark
                      ? Theme.of(context).iconTheme.copyWith(
                          color: whiteColor.withOpacity(0.4), size: 19.sm)
                      : Theme.of(context).iconTheme.copyWith(
                          color: primaryBlue.withOpacity(0.65), size: 19.sm),
                  backgroundColor: state.isDark ? dModeBlack : whiteColor,
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
      },
    );
  }
}
