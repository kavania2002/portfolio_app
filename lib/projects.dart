import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
  String projectTitle = "";
  String projectDesc = "";
  String projectURL = "";

  Project(this.projectTitle, this.projectDesc, this.projectURL, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          child: Column(
            children: [
              Text(
                projectTitle,
                style: GoogleFonts.courierPrime(
                  fontSize: 24,
                ),
              ),
              Text(projectDesc),
            ],
          ),
          onTap: () => launch(projectURL),
        ),
      ),
    );
  }
}
