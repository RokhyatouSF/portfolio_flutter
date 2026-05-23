import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),
      width: double.infinity,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // TITLE
          const Text(
            "À propos de moi",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Qui je suis et ce que je fais",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 50),

          // CARD
          Container(
            constraints: const BoxConstraints(maxWidth: 800),

            padding: const EdgeInsets.all(40),

            decoration: BoxDecoration(
              color: const Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                ),
              ],
            ),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ICON
                Container(
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: const Color(0xFF22C55E).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: const Icon(
                    Icons.person,
                    color: Color(0xFF22C55E),
                    size: 28,
                  ),
                ),

                const SizedBox(width: 20),

                // TEXT
                const Expanded(
                  child: Text(
                    "Étudiante en informatique passionnée par la cybersécurité, l’intelligence artificielle et le développement mobile. "
                    "Je conçois des applications modernes, sécurisées et performantes avec une forte attention sur l’expérience utilisateur et la qualité du code.\n\n"
                    "Mon objectif est de transformer des idées en solutions digitales utiles et innovantes.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.7,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}