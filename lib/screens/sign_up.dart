import 'package:flutter/material.dart';
import 'package:smart_watch_app/widgets/button.dart';
import 'package:smart_watch_app/widgets/text_field.dart';
import '../constants/Login/Signup/Services/auth_services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool isLoading = false;

  Future<void> signUp() async {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        nameController.text.isEmpty) {
      showError('Please fill out all fields.');
      return;
    }

    setState(() {
      isLoading = true;
    });

    final authService = AuthService();

    final response = await authService.signUpUser(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
      name: nameController.text.trim(),
    );

    if (response == "success") {
      showError("Sign up successful! Please check your email to verify your account.");
    } else {
      showError(response);
    }

    setState(() {
      isLoading = false;
    });
  }

  void showError(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sign Up Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView( // Enables scrolling when the keyboard pops up
          child: SizedBox(
            height: height, // Ensures the height is set to screen size
            child: Center( // Centers all content vertically
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Padding for better alignment
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: height / 3, // Adjust the height of the image container
                      child: Image.asset("assets/images/products-sp-m (1).jpg"),
                    ),
                    const SizedBox(height: 20), // Spacer between image and form
                    TextFieldInput(
                      textEditingController: nameController,
                      hintText: "Full Name",
                      icon: Icons.person,
                      togglePasswordVisibility: () {},
                    ),
                    const SizedBox(height: 20), // Spacer between fields
                    TextFieldInput(
                      textEditingController: emailController,
                      hintText: "Email Address",
                      icon: Icons.email,
                      togglePasswordVisibility: () {},
                    ),
                    const SizedBox(height: 20), // Spacer between fields
                    TextFieldInput(
                      textEditingController: passwordController,
                      hintText: "Password",
                      icon: Icons.lock,
                      isPass: true,
                      togglePasswordVisibility: () {
                      },
                    ),
                    const SizedBox(height: 10), // Spacer between field and forgot password
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30), // Spacer between forgot password and button
                    isLoading
                        ? const CircularProgressIndicator()
                        : MyButton(
                      onTab: signUp,
                      text: "Sign Up",
                    ),
                    const SizedBox(height: 20), // Spacer between button and bottom text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            " Log In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
