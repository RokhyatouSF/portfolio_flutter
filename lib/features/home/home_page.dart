import 'package:flutter/material.dart';
import 'package:portfolio/features/hero/hero_sectio.dart';
import 'package:portfolio/features/about/about_section.dart';
import 'package:portfolio/features/skills/skills_section.dart';
import 'package:portfolio/features/projects/projects_section.dart';
import 'package:portfolio/features/contact/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // KEYS POUR SCROLL PRO (SPA propre)
  final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  // SCROLL PRO
  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          // NAVBAR
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Color(0xFFEAEAEA)),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                const Text(
                  "Rokhyatou",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  children: [
                    _Nav("À propos", () => scrollTo(aboutKey)),
                    _Nav("Competences", () => scrollTo(skillsKey)),
                    _Nav("Projets", () => scrollTo(projectsKey)),
                    _Nav("Contact", () => scrollTo(contactKey)),
                  ],
                ),
              ],
            ),
          ),

          // BODY SCROLL SPA
          Expanded(
            child: SingleChildScrollView(

              child: Column(
                children: [

                  Container(
                    key: heroKey,
                    child: const HeroSection(),
                  ),

                  Container(
                    key: aboutKey,
                    child: const AboutSection(),
                  ),

                  Container(
                    key: skillsKey,
                    child: SkillsSection(),
                  ),

                  Container(
                    key: projectsKey,
                    child: const ProjectsSection(),
                  ),

                  Container(
                    key: contactKey,
                    child: const ContactSection(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// NAV ITEM PROPRE
class _Nav extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _Nav(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),

      child: InkWell(
        onTap: onTap,

        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}