import 'package:chef_list/components/social_media_button.dart';
import 'package:chef_list/components/title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../screen/enter_number.dart';
import 'checkbox.dart';

late String userEmail;

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key, required this.containerHeight, required this.onTap});
  final double containerHeight;
  final Function() onTap;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 50,
      ),
      TitleText(
          text: "Cheflist",
          colour: Colors.white,
          size: 35,
          fontFamily: "Cera-Pro-black"),
      SizedBox(
        height: 45,
      ),
      Expanded(
          child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  TitleText(
                      text: "Авторизация",
                      colour: Colors.white,
                      size: 24,
                      fontFamily: "Cera-Pro-black"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Пожалуйста выберите способ авторизации",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(159, 170, 174, 1),
                        fontSize: 14,
                        fontFamily: "Cera-Pro-black"),
                  ),
                  EnterNumber(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _googleSignIn.signIn().then((value) {
                            String userName = value!.displayName!;
                            print(userName);
                          });
                        },
                        child: Image.asset(
                          "assets/images/google.png",
                          width: 35,
                          height: 35,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(13),
                          primary: Color.fromRGBO(54, 54, 54, 1),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SocialMedaiButton(
                          icoon: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blue,
                            size: 35,
                          ),
                          onTap: () {}),
                      SizedBox(
                        width: 20,
                      ),
                      SocialMedaiButton(
                          icoon: Icon(
                            FontAwesomeIcons.apple,
                            color: Colors.white,
                            size: 35,
                          ),
                          onTap: () {})
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'или',
                              style: TextStyle(
                                  color: Color.fromRGBO(159, 170, 174, 1))),
                          TextSpan(
                            text: ' продолжить как гость',
                            style: TextStyle(
                              color: Color.fromRGBO(159, 170, 174, 1),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        CheckBOX(),
                        TextButton(
                          onPressed: onTap,
                          child: Container(
                            width: 256,
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              // s
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Я прочитал(а) и соглашаюсь с',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10)),
                                      TextSpan(
                                        text:
                                            ' Пользовательским соглашениям и Политикой конфединциальности',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(159, 170, 174, 1),
                                          decoration: TextDecoration.underline,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )))
    ]);
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
