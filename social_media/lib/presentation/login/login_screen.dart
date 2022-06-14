import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:social_media/presentation/chat/chat_screen.dart';
import 'package:social_media/presentation/common/constants/const.dart';
import 'package:social_media/presentation/common/widgets/field_texture.dart';
import 'package:social_media/presentation/common/widgets/gap.dart';
import 'package:social_media/presentation/common/widgets/logo_texture.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/new_post/new_post.dart';
import 'package:social_media/presentation/post_screen/post_screen.dart';
import 'package:social_media/presentation/reels/reels_screen.dart';
import 'package:social_media/presentation/search/search_screen.dart';
import 'package:social_media/presentation/sign_up/sign_up_screen.dart';
import 'package:social_media/themes/colors.dart';
import 'package:social_media/themes/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: LoginBody()),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

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
        child: Padding(
          padding: constPadding,
          child: Container(
            constraints: BoxConstraints(maxWidth: 800.sm),
            child: Column(
              children: [
                gap(H: 20.sm),
                LogoTexture(),
                gap(H: 50.sm),
                LoginContainer()
              ],
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
              "Log in to Your Account",
              style: TextStyle(
                  color: lightBlack,
                  fontSize: 20.sm,
                  fontWeight: FontWeight.w500),
            ),
            gap(H: 20.sm),
            FieldTexture(title: "Email", controller: _LoginEmailController),
            gap(H: 20.sm),
            FieldTexture(
                title: "Password", controller: _LoginPasswordController),
            gap(H: 8),
            SizedBox(
              width: double.infinity.sm,
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  color: primaryBlue,
                  fontSize: 13,
                ),
                textAlign: TextAlign.end,
              ),
            ),
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
                      "Sign in",
                      style: mainAppBarTitile.copyWith(
                          color: whiteColor, fontSize: 15),
                    ),
                    color: primaryBlue,
                    padding: EdgeInsets.symmetric(horizontal: 60.sm),
                  ),
                  gap(H: 5.sm),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Not a member?  ",
                          style: TextStyle(color: lightBlack, fontSize: 13.sm)),
                      TextSpan(
                          text: "Sign up",
                          style: TextStyle(color: primaryBlue, fontSize: 13.sm))
                    ])),
                  ),
                  gap(H: 40.sm),
                  Text(
                    "Terms & Conditions | Privacy Policy",
                    style: TextStyle(
                        color: primaryBlue.withOpacity(0.8), fontSize: 13.sm),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
