import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:work_gokul/front1.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:work_gokul/login1.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:work_gokul/pages/welcome1.dart';
//import 'package:project/authcontroller.dart';
//import 'package:project/login.dart';
//import 'package:snippet_coder_utils/FormHelper.dart';
//import 'package:snippet_coder_utils/hex_color.dart';

var user = "";

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _passwordController = TextEditingController();

  final _emailController = TextEditingController();

  final formGlobalKey = GlobalKey<FormState>();
  bool isApicallprocess = false;
  bool hide_password = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(248, 69, 61, 186),
        body: ProgressHUD(
          child: Form(
            key: globalFormKey,
            child: _loginui(context),
          ),
          // inAsyncCall: isApicallprocess,
          //  key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _loginui(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 6, 53, 53),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            height: 40.0,
                            width: 40.0,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => SplashPage()));
                                },
                                icon: const Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/login.png',
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                          width: 150.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "LOGIN",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ],
                    ),
                    /*  FormHelper.inputFieldWidget(
                        context,
                       prefixico
                      
                    //     Icon? : Icons.person,
                        "username",
                        //"userName", 
                        (onValidateVal) {
                      if (onValidateVal.isEmpty()) {
                        return "username ,can \'t be empty.";
                      }
                      return null;
                    },
                        (onSaved){
                       username =onSaved;
                      },
                      borderColor: Colors.black,
                      borderErrorColor: Colors.red,
                      prefixIconColor: Colors.white,
                    )*/
                    const SizedBox(height: 20),
                    Container(
                      //height: double.infinity,
                      height: MediaQuery.of(context).size.height * 5,
                      //margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                    text: const TextSpan(
                                  text: "WELCOME BACK!",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 53, 53),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  padding: EdgeInsets.only(top: 5.0, left: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color.fromARGB(255, 6, 53, 53),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: const InputDecoration(
                                        labelText: "Email",
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        hintText: "Enter your Email",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                        //  errorText: "enter valid_email"
                                        ),
                                    style: const TextStyle(color: Colors.black),
                                    validator: (email) {},
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  padding:
                                      const EdgeInsets.only(top: 5.0, left: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color.fromARGB(255, 6, 53, 53),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: TextFormField(
                                      scrollPadding: const EdgeInsets.all(10.0),
                                      controller: _passwordController,
                                      decoration: const InputDecoration(
                                          labelText: "Password",
                                          labelStyle: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          hintText: "Password",
                                          border: InputBorder.none),
                                      obscureText: true,
                                      validator: (password) {}),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) => welcome(
                                                  remail: '',
                                                )));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    width: 200,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                      vertical: 12.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 6, 53, 53),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: const Text(
                                      'Sign In',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: "Don\'t have an account?",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 6, 53, 53),
                                        fontSize: 20,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: " Sign Up!",
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 6, 53, 53),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () => {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const create()),
                                                    )
                                                  }
                                            //Get.to(() => createacc())
                                            ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
