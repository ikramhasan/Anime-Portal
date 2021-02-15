import 'package:anime_portal/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetWidget<AuthController> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    buildTextInputField({
      @required String hintText,
      @required TextEditingController textController,
    }) {
      return Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.blueGrey[900],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Signup'),
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
              'Signup Now.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: RichText(
                text: TextSpan(
                  text: 'Have an account ? ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: 'Login now',
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
              hintText: 'Name',
              textController: _nameController,
            ),
            SizedBox(height: 32),
            buildTextInputField(
              hintText: 'Email',
              textController: _emailController,
            ),
            SizedBox(height: 32),
            buildTextInputField(
              hintText: 'Email',
              textController: _passwordController,
            ),
            Expanded(
              child: SizedBox(height: 32),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(3),
              splashColor: Colors.white,
              onTap: () {
                controller.createUser(
                  name: _nameController.text.trim(),
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
                  child: Text('Signup'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
