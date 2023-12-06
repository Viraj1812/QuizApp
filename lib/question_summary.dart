import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: Container(
                    color: data['user_answer'] == data['answer']
                        ? const Color.fromARGB(255, 26, 138, 230)
                        : const Color.fromARGB(255, 211, 81, 234),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            data['question'] as String),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 211, 81, 234),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            data['user_answer'] as String),
                        Text(
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 26, 138, 230),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            data['answer'] as String),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
