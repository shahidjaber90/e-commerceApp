import 'package:e_commerce/screens/home_page.dart';
import 'package:e_commerce/screens/login_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:e_commerce/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController usernameEmail = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isChecked = false;

  bool _obsecureText = true;


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
                    Container(
                      child: Row(
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
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),

                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        TextConstant.signupTitleText,
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
                          TextConstant.signupSubTitleText,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    
                      
                    Padding(padding:const EdgeInsets.only(left: 5, right: 5),
                       child: Column(
                        children: [
                            textFieldFunction(TextConstant.emailText,TextConstant.emailText,
                      usernameEmail,ImageConstant.emailIcon,context),
                            textFieldFunction(TextConstant.userNameText,TextConstant.userNameText,
                      usernameEmail,ImageConstant.userIcon,context),
                    passwordFieldFunction(TextConstant.passwordText,TextConstant.passwordFieldText,
                      password,ImageConstant.lockIcon,context,_obsecureText,GestureDetector(
                            onTap: () {
                              setState(() {
                                _obsecureText = !_obsecureText;
                              });
                            },
                            child: Icon(_obsecureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),),
                        ],
                       )
                    ),

                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    isChecked = !isChecked;
                                    setState(() {});
                                  }),
                              Text(
                                TextConstant.agreeCheckText,
                                style: TextStyle(
                                    color: ColorConstant.haveanAccountColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'DM Sans'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width * 0.085,),
                              Text(TextConstant.termsText,textAlign: TextAlign.start,style: TextStyle(
                              color: ColorConstant.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
        
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,), 
        
                    buttonFunction2(TextConstant.signUpButtonText,ColorConstant.startedButtonColor,
                    context, const LoginPage(),Icons.login_outlined),
        
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(TextConstant.alreadyAccountText,style: TextStyle(
                          color: ColorConstant.haveanAccountColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM Sans'
                        ),),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                        }, child: Text(TextConstant.signinText,style: TextStyle(
                          color: ColorConstant.subtitleTextColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM Sans'
                        ),))
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
        
                    
                    Padding(padding: const EdgeInsets.only(top: 1),
                    child: buttonFunction3(TextConstant.signFacebookText, ColorConstant.facebookBtnColor,
                    context, const LoginPage(),Icons.facebook),
                    ),
                        
                        
                    
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.010,),
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
