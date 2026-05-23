import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),

      color: const Color(0xFF0B0F14),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // TITRE
          const Text(
            "Projets réalisés",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Quelques projets académiques et professionnels développés avec des technologies modernes",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 20,
            runSpacing: 20,

            children: [

              ProjectCard(
                title: "DIAM-YARAM",
                description:
                    "Plateforme mobile de suivi médical intelligent intégrant IA et NFC pour un suivi sécurisé des patients.",
                tech: ["Flutter", "AI", "NFC", "Firebase", "DJANGO"],
                color: const Color(0xFF22C55E),
              ),

              ProjectCard(
                title: "Gestion entreprise eau",
                description:
                    "Application de gestion des ventes, remboursements et chargements avec messagerie temps réel et Redis Streams.",
                tech: ["Laravel", "Redis", "MySQL", "WebSocket"],
                color: const Color(0xFF38BDF8),
              ),

              ProjectCard(
                title: "Gestion établissement scolaire",
                description:
                    "Application complète pour inscriptions, paiements et emplois du temps. Projet classé parmi les meilleurs.",
                tech: ["PHP", "MySQL", "Bootstrap"],
                color: const Color(0xFF22C55E),
              ),

              ProjectCard(
                title: "Sites vitrines & plateformes",
                description:
                    "Création de sites web modernes avec intégration API et optimisation des performances.",
                tech: ["React", "Laravel", "API REST"],
                color: const Color(0xFF38BDF8),
              ),

              ProjectCard(
                title: "Application santé",
                description:
                    "Gestion patient-médecin avec rendez-vous, dossiers médicaux et statistiques automatisées.",
                tech: ["Flutter", "Spring Boot", "MySQL"],
                color: const Color(0xFF22C55E),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ===============================
// PROJECT CARD
// ===============================
class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tech;
  final Color color;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.tech,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 380),

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(
        color: const Color(0xFF111827),
        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.18),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],

        border: Border.all(
          color: color.withOpacity(0.25),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // TITRE
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          // DESCRIPTION
          Text(
            description,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white70,
              height: 1.4,
            ),
          ),

          const SizedBox(height: 15),

          // TECH STACK
          Wrap(
            spacing: 8,
            runSpacing: 8,

            children: tech.map((t) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),

                decoration: BoxDecoration(
                  color: color.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text(
                  t,
                  style: TextStyle(
                    fontSize: 11,
                    color: color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}