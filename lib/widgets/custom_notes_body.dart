import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class CustomNotesBody extends StatelessWidget {
  const CustomNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar()
        ],
      ),
    );
  }
}