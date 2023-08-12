import 'package:flutter/material.dart';
import 'package:login_flutter_app/components/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Home page",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
            ),
            SizedBox(
              height: 48,
            ),
            MyButton(
              title: "LOGOUT",
              prefixIcon: Icons.logout_rounded,
              color: Colors.indigo.shade800,
              logOut: true,
            )
          ],
        ),
      ),
    );
  }
}
