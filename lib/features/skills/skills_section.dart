import 'package:flutter/material.dart';

// section compétences version moderne et attractive
class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // titre principal
          const Text(
            "Compétences techniques",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),

          const SizedBox(height: 10),

          // sous-titre
          const Text(
            "Technologies et outils que j’utilise pour concevoir des solutions modernes et sécurisées",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 50),

          // grille des compétences
          Wrap(
            spacing: 20,
            runSpacing: 20,

            children: const [

              SkillCategoryCard(
                title: "Développement Mobile",
                icon: Icons.phone_android,
                skills: ["Flutter", "Dart", "Android"],
              ),

              SkillCategoryCard(
                title: "Développement Web",
                icon: Icons.web,
                skills: [
                  "Laravel",
                  "React",
                  "Angular",
                  "Spring Boot",
                  "Django",
                ],
              ),

              SkillCategoryCard(
                title: "Langages de programmation",
                icon: Icons.code,
                skills: [
                  "PHP",
                  "Java",
                  "JavaScript",
                  "Python",
                  "C",
                  "C++",
                ],
              ),

              SkillCategoryCard(
                title: "Bases de données",
                icon: Icons.storage,
                skills: [
                  "MySQL",
                  "PostgreSQL",
                  "MongoDB",
                  "SQL Server",
                ],
              ),

              SkillCategoryCard(
                title: "Cybersécurité",
                icon: Icons.lock,
                skills: [
                  "Cryptographie",
                  "Authentification",
                  "Sécurité systèmes",
                  "Codes correcteurs",
                ],
              ),

              SkillCategoryCard(
                title: "Outils & Méthodes",
                icon: Icons.build,
                skills: [
                  "Git / GitHub",
                  "Figma",
                  "Trello",
                  "UML",
                  "Merise",
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// widget carte compétence
class SkillCategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> skills;

  const SkillCategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        // ombre douce moderne
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 25,
            offset: const Offset(0, 10),
          )
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // header carte
          Row(
            children: [

              Icon(icon, color: Colors.black87),

              const SizedBox(width: 10),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          // tags compétences
          Wrap(
            spacing: 8,
            runSpacing: 8,

            children: skills.map((skill) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),

                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text(
                  skill,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
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