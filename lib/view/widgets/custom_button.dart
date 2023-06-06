import '../../utils/colors.dart';
import '../../utils/media_query_values.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.title,
    this.isIconButton = false,
  });

  final double width;
  final String title;
  final bool isIconButton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: context.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              primaryColor,
              secondPrimaryColor,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            if (isIconButton) ...[
              SizedBox(
                width: context.width * 0.005,
              ),
              const Icon(
                Icons.add,
                size: 20.0,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
