import 'package:flutter/material.dart';
import 'package:nu_go_app/utils/constants/colors.dart';

class MyAlertDialog extends StatelessWidget {
  final String title;
  final String description;
  const MyAlertDialog(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: NUBlue,
      icon: const Icon(
        Icons.error,
      ),
      iconColor: Colors.white,
      actions: [
        TextButton(
          child: const Text(
            'OK',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
      content: Text(
        description,
        style: const TextStyle(color: Colors.white),
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
