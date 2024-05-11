import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const SignInButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blueGrey.withOpacity(0.4),
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
