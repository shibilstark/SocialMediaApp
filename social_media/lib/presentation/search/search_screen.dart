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
      body: Center(child: SearchBody()),
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
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: DummyProfile(),
      title: Text(
        "User Name",
        style: textTheme.bodySmall!
            .copyWith(fontSize: 17.sm, fontWeight: FontWeight.w500),
      ),
      trailing: Text("Follow",
          style: textTheme.bodyMedium!
              .copyWith(color: primaryBlue, fontSize: 14.sm)),
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
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          child: CupertinoTextField(
            controller: _searchController,
            padding: EdgeInsets.symmetric(vertical: 10.sm, horizontal: 10.sm),
            cursorColor: primaryBlue,
            style: textTheme.bodySmall!.copyWith(fontSize: 16.sm),
            decoration: BoxDecoration(
                color: softBg, borderRadius: BorderRadius.circular(4.sm)),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Search",
              style: textTheme.bodyMedium!.copyWith(fontSize: 16.sm),
            ))
      ],
    );
  }
}
