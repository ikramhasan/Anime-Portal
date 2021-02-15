import 'package:anime_portal/controllers/auth_controller.dart';
import 'package:anime_portal/views/signup_page/signup_page.dart';
import 'package:anime_portal/widgets/build_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetWidget<AuthController> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 42,
          right: 42,
          top: 100,
          bottom: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey,',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Login Now.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Get.to(SignupPage());
              },
              child: RichText(
                text: TextSpan(
                  text: 'If you are new / ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: 'Create new',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 64),
            buildTextInputField(
              hintText: 'Email',
              textController: _emailController,
            ),
            SizedBox(height: 32),
            buildTextInputField(
              hintText: 'Password',
              textController: _passwordController,
            ),
            Expanded(
              child: SizedBox(height: 32),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(3),
              splashColor: Colors.white,
              onTap: () {
                controller.login(
                  email: _emailController.text,
                  password: _passwordController.text,
                );
              },
              child: Ink(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text('Login'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
