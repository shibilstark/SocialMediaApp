import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/dummy_profile.dart';
import 'package:social_media/presentation/common/widgets/field_texture.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/themes/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBody(),
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 900.sm),
      child: Padding(
        padding: constPadding,
        child: Column(
          children: [
            SearchTexture(),
            Expanded(
                child: ListView.separated(
              itemBuilder: (context, index) => SearchTile(),
              separatorBuilder: (context, index) => gap(H: 5.sm),
              itemCount: 10,
            ))
          ],
        ),
      ),
    );
  }
}

class SearchTile extends StatelessWidget {
  const SearchTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //  Text(
      //                   "User Name",
      //                   style: TextStyle(
      //                       color: lightBlack,
      //                       fontSize: 18.sm,
      //                       fontWeight: FontWeight.w500),
      //                 ),
      // Text(
      //   "Follow",
      //   style: TextStyle(
      //       color: primaryBlue,
      //       fontSize: 13.sm,
      //       fontWeight: FontWeight.bold),
      // )

      leading: DummyProfile(),
      title: Text(
        "User Name",
        style: TextStyle(
            color: lightBlack, fontSize: 18.sm, fontWeight: FontWeight.w500),
      ),
      trailing: Text(
        "Follow",
        style: TextStyle(
            color: primaryBlue, fontSize: 13.sm, fontWeight: FontWeight.bold),
      ),
    );
  }
}

TextEditingController _searchController = TextEditingController();

class SearchTexture extends StatelessWidget {
  const SearchTexture({
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
