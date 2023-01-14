import 'package:e_commerce/screens/home_view.dart';
import 'package:e_commerce/screens/signup_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:e_commerce/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameEmail = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _obsecureText = true;

  loginFunction() {
    if (usernameEmail.text == 'shahidjaber90' || usernameEmail.text == 'shahidjaber90@gmail.com' &&
        password.text == '123456') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
      usernameEmail.clear();
      password.clear();
    } else {
      setState(() {
        // TextConstant.loginErrorText = 'Login failed';
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(TextConstant.loginErrorText),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('OK'),
                  )
                ],
              );
            });
      });
    }
  }

  late Box box1;

  @override
  void initState() {
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox('logindata');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.90,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageConstant.location),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Text(
                          TextConstant.locationText,
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        TextConstant.signTitleText,
                        style: const TextStyle(
                            fontSize: 24,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Opacity(
                      opacity: 0.60,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          TextConstant.signSubTitleText,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    
                    
                    Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          children: [
                            textFieldFunction(
                                TextConstant.userNameEmailText,
                                TextConstant.userNameText,
                                usernameEmail,
                                ImageConstant.userIcon,
                                context),
                            passwordFieldFunction(
                              TextConstant.passwordText,
                              TextConstant.passwordFieldText,
                              password,
                              ImageConstant.lockIcon,
                              context,
                              _obsecureText,
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obsecureText = !_obsecureText;
                                  });
                                },
                                child: Icon(_obsecureText
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    SizedBox(
                      height: 44,
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: ElevatedButton(
                          onPressed: () {
                            loginFunction();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.startedButtonColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  height: 44,
                                  width:
                                      MediaQuery.of(context).size.width * 0.18),
                              Container(
                                alignment: Alignment.center,
                                height: 44,
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text(TextConstant.signInButtonText,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'DM Sans')),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
                                  height: 44,
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                  child: const Icon(Icons.login_outlined)),
                            ],
                          )),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.01,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          TextConstant.haveanAccountText,
                          style: TextStyle(
                              color: ColorConstant.haveanAccountColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'DM Sans'),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignupPage()));
                            },
                            child: Text(
                              TextConstant.signUpText,
                              style: TextStyle(
                                  color: ColorConstant.subtitleTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'DM Sans'),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: buttonFunction3(
                          TextConstant.signFacebookText,
                          ColorConstant.facebookBtnColor,
                          context,
                          const LoginPage(),
                          Icons.facebook),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.013,
                child: Opacity(
                    opacity: 0.05,
                    child: Image.asset(ImageConstant.homeIndicator)),
              ),
            ],
          ),
        ));
  }
}
