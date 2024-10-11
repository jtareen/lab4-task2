import 'package:flutter/material.dart';

Container gradientButton(String buttonText, List<Color> gradientColors) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: gradientColors),
        borderRadius: BorderRadius.circular(10.0)),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Match container border radius
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
      ),
    ),
  );
}
