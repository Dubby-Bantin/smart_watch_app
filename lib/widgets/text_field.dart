import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  final bool isPass;
  final bool isPasswordVisible;
  final VoidCallback togglePasswordVisibility;

  const TextFieldInput({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.icon,
    this.isPass = false,
    this.isPasswordVisible = false,
    required this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: textEditingController,
        obscureText: isPass && !isPasswordVisible,
        style: const TextStyle(color: Colors.white), // Text color set to white
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white54), // Lighter hint text
          prefixIcon: Icon(icon, color: Colors.white), // Icon color set to white
          suffixIcon: isPass
              ? IconButton(
            icon: Icon(
              isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.white, // Icon color set to white
            ),
            onPressed: togglePasswordVisibility,
          )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white), // White border when enabled
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue), // Blue border when focused
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
