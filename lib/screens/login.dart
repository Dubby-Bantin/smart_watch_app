import 'package:flutter/material.dart';
import 'package:smart_watch_app/constants/Login/Signup/Services/auth_services.dart';
import 'package:smart_watch_app/widgets/button.dart';
import 'package:smart_watch_app/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  bool isPasswordVisible = false;

  Future<void> login() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      showError('Please fill out all fields.');
      return;
    }

    setState(() {
      isLoading = true;
    });

    final authService = AuthService();

    final response = await authService.loginUser(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

    if (response == "success") {
      Navigator.pushReplacementNamed(context, '/home');
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
        title: const Text('Login Error'),
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

  void navigateToForgotPassword() {
    Navigator.pushNamed(context, '/forgot-password');
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height,
            child: Center( // Centering the content vertically
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically within the column
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: height / 2.7,
                      child: Image.asset("assets/images/products-sp-m (1).jpg"),
                    ),
                    const SizedBox(height: 20), // Spacer
                    TextFieldInput(
                      textEditingController: emailController,
                      hintText: "Email Address",
                      icon: Icons.email,
                      togglePasswordVisibility: () {},
                      // hintStyle: const TextStyle(color: Colors.white54), // Lighter hint text
                    ),
                    const SizedBox(height: 20), // Spacer
                    TextFieldInput(
                      textEditingController: passwordController,
                      hintText: "Password",
                      icon: Icons.lock,
                      isPass: true,
                      isPasswordVisible: isPasswordVisible,
                      togglePasswordVisibility: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      // hintStyle: const TextStyle(color: Colors.white54), // Lighter hint text
                    ),
                    const SizedBox(height: 10), // Spacer
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: navigateToForgotPassword,
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30), // Spacer
                    isLoading
                        ? const CircularProgressIndicator()
                        : MyButton(
                      onTab: login,
                      text: "Log In",
                    ),
                    const SizedBox(height: 30), // Spacer
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: const Text(
                            " Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
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
