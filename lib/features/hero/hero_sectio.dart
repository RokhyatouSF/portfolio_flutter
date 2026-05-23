import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          // ================= TEXT SIDE =================
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                // Badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xFF22C55E).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: const Text(
                    "Développeuse Web & Mobile",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF22C55E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Main title
                const Text(
                  "Je construis des systèmes\nmodernes & sécurisés",
                  style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                    letterSpacing: -1,
                  ),
                ),

                const SizedBox(height: 20),

                // Description
                const SizedBox(
                  width: 500,
                  child: Text(
                    "Passionnée par la cybersécurité, l’intelligence artificielle et le développement mobile. "
                    "Je transforme des idées complexes en produits digitaux performants, sécurisés et scalables.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.6,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // CTA BUTTONS
                Row(
                  children: [

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF22C55E),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text("Me contacter"),
                    ),

                    const SizedBox(width: 15),

                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text("Télécharger CV"),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 50),

          // ================= IMAGE SIDE =================
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                width: 320,
                height: 320,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF22C55E),
                      Color(0xFF38BDF8),
                    ],
                  ),

                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF22C55E).withOpacity(0.25),
                      blurRadius: 80,
                    ),
                  ],
                ),

                padding: const EdgeInsets.all(6),

                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),

                  child: Image.asset(
                    "assets/images/glace.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}