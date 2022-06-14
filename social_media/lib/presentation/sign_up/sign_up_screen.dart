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
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          child: CommonAppBar(title: "Sign Up"), preferredSize: appBarHeight),
      body: SafeArea(child: SignUpBody()),
    );
  }
}

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [primaryBlue, secondaryBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.0,
              1.0,
            ],
            tileMode: TileMode.clamp),
      ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 800.sm),
          child: Padding(
            padding: constPadding,
            child: Container(
              constraints: BoxConstraints(maxWidth: 800.sm),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      gap(H: 30.sm),
                      Text(
                        "Application Name",
                        style: mainAppBarTitile,
                      )
                    ],
                  ),
                  gap(H: 30.sm),
                  LoginContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextEditingController _LoginEmailController = TextEditingController();
TextEditingController _LoginPasswordController = TextEditingController();

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sm),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.sm, vertical: 30.sm),
        width: double.infinity,
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(10.sm)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create New Account",
              style: TextStyle(
                  color: lightBlack,
                  fontSize: 20.sm,
                  fontWeight: FontWeight.w500),
            ),
            gap(H: 20.sm),
            Row(
              children: [
                Expanded(
                  child: FieldTexture(
                      title: "First Name ", controller: _LoginEmailController),
                ),
                gap(W: 10.sm),
                Expanded(
                  child: FieldTexture(
                      title: "Last Name ", controller: _LoginEmailController),
                ),
              ],
            ),
            gap(H: 20.sm),
            FieldTexture(title: "Email", controller: _LoginEmailController),
            gap(H: 20.sm),
            FieldTexture(
                title: "Password", controller: _LoginPasswordController),
            gap(H: 20.sm),
            FieldTexture(
                title: "Conform Password",
                controller: _LoginPasswordController),
            gap(H: 20.sm),
            GenderWidgetSignUp(),
            gap(H: 20.sm),
            CheckBoxWidget(),
            gap(H: 20.sm),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.sm)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "Sign Up",
                      style: mainAppBarTitile.copyWith(
                          color: whiteColor, fontSize: 15),
                    ),
                    color: primaryBlue,
                    padding: EdgeInsets.symmetric(horizontal: 60.sm),
                  ),
                  gap(H: 5.sm),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

ValueNotifier<int> _genderSelector = ValueNotifier(0);

class GenderWidgetSignUp extends StatelessWidget {
  const GenderWidgetSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _genderSelector,
        builder: (BuildContext context, int radioValue, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gender",
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 13.sm,
                    fontWeight: FontWeight.w500),
              ),
              gap(H: 10.sm),
              Row(
                children: [
                  LimitedBox(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20.sm,
                          width: 20.sm,
                          child: Radio<int>(
                            groupValue: _genderSelector.value,
                            value: 1,
                            onChanged: (value) {
                              _genderSelector.value = value!;
                              _genderSelector.notifyListeners();
                            },
                            activeColor: primaryBlue,
                          ),
                        ),
                        gap(W: 5.sm),
                        Text(
                          "Male",
                          style: TextStyle(
                              color: lightBlack,
                              fontSize: 15.sm,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  gap(W: 20.sm),
                  LimitedBox(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20.sm,
                          width: 20.sm,
                          child: Radio<int>(
                            groupValue: _genderSelector.value,
                            value: 2,
                            onChanged: (value) {
                              _genderSelector.value = value!;
                              _genderSelector.notifyListeners();
                            },
                            activeColor: primaryBlue,
                          ),
                        ),
                        gap(W: 5.sm),
                        Text(
                          "Female",
                          style: TextStyle(
                              color: lightBlack,
                              fontSize: 15.sm,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }
}

ValueNotifier<bool> _checkBoxValue = ValueNotifier(false);

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _checkBoxValue,
        builder: (context, bool value, _) {
          return Row(
            children: [
              SizedBox(
                height: 20.sm,
                width: 20.sm,
                child: Checkbox(
                  value: _checkBoxValue.value,
                  activeColor: primaryBlue,
                  onChanged: (value) {
                    _checkBoxValue.value = value!;
                    _checkBoxValue.notifyListeners();
                  },
                ),
              ),
              gap(W: 10.sm),
              const Text(
                "I Accept all Terms and Conditions & Privacy Policy",
                style: TextStyle(fontSize: 12),
              )
            ],
          );
        });
  }
}
