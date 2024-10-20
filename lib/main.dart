import 'package:flutter/material.dart';
import 'package:portfolio/icon_with_label.dart';
import 'package:portfolio/nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            constraints: const BoxConstraints(minWidth: 800, maxWidth: 800),
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const NavBar(),
                  const SizedBox(height: 40),
                  Container(
                    alignment: Alignment.topRight,
                    width: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Francis Rhaey",
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        const Text(
                          "Computer Science Enjoyer",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 232, 149, 1)),
                        ),
                        const SizedBox(height: 20),
                        Row(children: [
                          Image.asset(
                            'assets/icon.png',
                            height: 160,
                            width: 160,
                          ),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconWithLabel(
                                    iconContent: FontAwesomeIcons.github,
                                    label: "GitHub"),
                                SizedBox(height: 12),
                                IconWithLabel(
                                    iconContent: FontAwesomeIcons.twitter,
                                    label: "Twitter"),
                                SizedBox(height: 12),
                                IconWithLabel(
                                    iconContent: FontAwesomeIcons.linkedin,
                                    label: "LinkedIn")
                              ])
                        ]),
                        const SizedBox(height: 20),
                        const Text(
                          "Computer science student specializing in building scalable and performant systems using HTML.",
                          style: TextStyle(
                              color: Color.fromRGBO(201, 201, 201, 1),
                              fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, tempora aperiam sit sint numquam deleniti, magnam nesciunt, ipsam harum dolore pariatur tenetur facere corrupti voluptas!",
                          style: TextStyle(
                              color: Color.fromRGBO(201, 201, 201, 1),
                              fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Aut provident accusantium eius? Quia recusandae dolor maiores, quibusdam voluptatibus qui vitae sunt temporibus, consequuntur quis illo.",
                          style: TextStyle(
                              color: Color.fromRGBO(201, 201, 201, 1),
                              fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Text(
                              "In a nutshell, 🏸 + 🍵 + 👨‍💻 = ",
                              style: TextStyle(
                                  color: Color.fromRGBO(201, 201, 201, 1),
                                  fontSize: 18),
                            ),
                            ShaderMask(
                              shaderCallback: (bounds) {
                                return const LinearGradient(colors: [
                                  Colors.lightBlue,
                                  Colors.lightBlueAccent,
                                  Colors.blue
                                ]).createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                );
                              },
                              child: const Text(
                                "@rhaey",
                                style: TextStyle(
                                  color: Color.fromRGBO(201, 201, 201, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            IconWithLabel(
                                iconContent: Icons.link_rounded,
                                label: "Peerlist"),
                            SizedBox(width: 10),
                            IconWithLabel(
                                iconContent: Icons.person, label: "About"),
                            SizedBox(width: 10),
                            const IconWithLabel(
                                iconContent: Icons.share_rounded,
                                label: "Blog"),
                            SizedBox(width: 10),
                            IconWithLabel(
                                iconContent: Icons.code, label: "Source"),
                          ],
                        ),
                        const SizedBox(height: 60)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
