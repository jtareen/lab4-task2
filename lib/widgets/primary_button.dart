import 'package:flutter/material.dart';

TextButton primaryButton(String buttonText) {
  return TextButton(
    onPressed: () {
      // Handle first button press
    },
    style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        backgroundColor:
            const Color.fromRGBO(20, 33, 39, 1.0), // Button background color
        foregroundColor: Colors.white, // Text color
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
    child: Text(
      buttonText,
      style: const TextStyle(fontSize: 16),
    ),
  );
}
