import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_flutter_app/components/my_button.dart';
import 'package:login_flutter_app/components/password_text_field.dart';
import 'package:login_flutter_app/components/text_field.dart';
import 'package:login_flutter_app/pages/home_page.dart';
import 'package:login_flutter_app/pages/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
              child: Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/images/promo.jpg",
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Wellcome back!",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Log in to your existing account of Q allure",
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyTextFiled(
                      title: "Email",
                      isAbscure: false,
                      prefixIcon: Icons.person_2_outlined),
                  const SizedBox(
                    height: 38,
                  ),
                  const MyTextFieldPass(title: "Password", isObscure: true),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shadowColor: Colors.indigo[500],
                        backgroundColor: Colors.indigo.shade800,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 48,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: const Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Text(
                    "Or connect using",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButton(
                        title: "Facebook",
                        prefixIcon: Icons.facebook_outlined,
                        color: Colors.indigo.shade400,
                        logOut: false,
                      ),
                      const MyButton(
                        title: " Google    ",
                        prefixIcon: Icons.g_mobiledata,
                        color: Colors.red,
                        logOut: false,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingUpPage(),
                          ),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue.shade600,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
