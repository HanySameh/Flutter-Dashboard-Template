import '../../utils/media_query_values.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.width,
    required this.title,
  });

  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: context.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            width: 2.0,
            color: const Color(0xFFCD5D37),
          ),
        ),
        child:  Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15.0,
              color: Color(0xFFCD5D37),
            ),
          ),
        ),
      ),
    );
  }
}
