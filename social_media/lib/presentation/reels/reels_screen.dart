import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/dummy_profile.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';
import 'package:video_player/video_player.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlack,
      appBar: PreferredSize(
        child: ReelsAppBar(),
        preferredSize: appBarHeight,
      ),
      body: ReelsBody(),
      bottomSheet: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10.0.sm),
        height: 80.sm,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LimitedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DummyProfile(),
                  gap(W: 10.sm),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "User Name",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 18.sm,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                            color: primaryBlue,
                            fontSize: 13.sm,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            LimitedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        size: 30.sm,
                        color: whiteColor,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        size: 30.sm,
                        color: whiteColor,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReelsBody extends StatelessWidget {
  const ReelsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80.sm),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 800.sm),
          child: Stack(
            children: [ReelsPlayer()],
          ),
        ),
      ),
    );
  }
}

final _dropItems = [
  "Report",
];
DropdownMenuItem<String> _buildMenuItem(String item) {
  return DropdownMenuItem(
    child: Text(item),
    value: item,
  );
}

class ReelsAppBar extends StatelessWidget {
  const ReelsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: whiteColor,
      title: Text(
        "Cutz",
        style: mainAppBarTitile.copyWith(color: whiteColor),
      ),
      titleSpacing: -5.sm,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            items: _dropItems.map(_buildMenuItem).toList(),
            onChanged: (value) {
              // value == "Edit"
              //     ? Navigator.of(context).pop()
              //     : Navigator.of(context).push(MaterialPageRoute(
              //         builder: (ctx) => TestScreen()));
            },
            icon: Icon(
              Icons.more_vert,
              size: 20.sm,
              color: whiteColor,
            ),
          ),
        ),
        gap(W: 15.sm),
      ],
    );
  }
}

class ReelsPlayer extends StatefulWidget {
  const ReelsPlayer({Key? key}) : super(key: key);

  @override
  State<ReelsPlayer> createState() => _ReelsPlayerState();
}

class _ReelsPlayerState extends State<ReelsPlayer> {
  late VideoPlayerController _videoPlayerController;
  bool playStatus = true;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset(
        "assets/video/Warriors - Season 2020 Cinematic - League of Legends (ft. 2WEI and Edda Hayes).webm");
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
        // playStatus = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _videoPlayerController.value.isInitialized
        ? AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: VideoPlayer(_videoPlayerController))
        : const Center(
            child: CircularProgressIndicator(color: lightBlack),
          );
  }
}
