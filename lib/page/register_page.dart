import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/components/my_text_field.dart';
import 'package:thydelivery_mobileapp/page/my_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key, required this.singIn});

  final void Function() singIn;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_outlined, size: 100),
            SizedBox(height: 25),
            Text(
              'Welcome to ThyDelivery',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25),
            MyTextField(
              textEditingController: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            SizedBox(height: 10),
            MyTextField(
              textEditingController: passwordController,
              hintText: 'Passwrod',
              obscureText: true,
            ),
            SizedBox(height: 10),
            MyTextField(
              textEditingController: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            SizedBox(height: 25),
            MyButton(onTap: () {}, text: 'Sign Up'),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an Account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: singIn,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
