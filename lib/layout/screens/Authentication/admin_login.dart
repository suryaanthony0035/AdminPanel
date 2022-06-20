import 'package:adminpanel/style/colors.dart';
import 'package:adminpanel/components/textFields/app_text_field.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 480,
                height: 550,
                padding: const EdgeInsets.only(
                  top: 0,
                  bottom: 30,
                  left: 20,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 3,
                        color: Colors.grey.withOpacity(0.1),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/loginLogo.png"),
                        ),
                      ),
                    ),
                    Text(
                      "Admin Login",
                      style: TextStyle(
                          color: AppColors.rubyReds,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Please login to your account",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 40),

                    //TextField
                    AuthTextField(
                      textEditingController: emailController,
                      hinText: 'Enter your email',
                      icon: Icon(
                        Icons.mail,
                        color: AppColors.mainColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    AuthTextField(
                      textEditingController: passwordController,
                      hinText: 'Password',
                      icon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: obscureText
                            ? Icon(
                                Icons.visibility,
                                color: AppColors.mainColor,
                              )
                            : Icon(Icons.visibility_off,
                                color: AppColors.mainColor),
                      ),
                      obscureText: obscureText,
                    ),

                    //forget Password
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            "Forget password ?",
                            style: TextStyle(color: Colors.grey[900]),
                          ),
                        ),
                      ],
                    ),

                    //login Button
                    const SizedBox(height: 30),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.mainColor,
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
