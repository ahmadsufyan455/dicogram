import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyles.body.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
