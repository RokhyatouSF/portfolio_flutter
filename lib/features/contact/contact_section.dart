import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(80),

      child: const Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Text("rokhyatousarrfall@gmail.com"),
          Text("+221 78 445 11 01"),
        ],
      ),
    );
  }
}