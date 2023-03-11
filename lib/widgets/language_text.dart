import 'package:flutter/material.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
