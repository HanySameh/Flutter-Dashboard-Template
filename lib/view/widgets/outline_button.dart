import '../../utils/media_query_values.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: context.width * 0.08,
        height: context.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            width: 2.0,
            color: const Color(0xFFCD5D37),
          ),
        ),
        child: const Center(
          child: Text(
            'Withdraw',
            style: TextStyle(
              fontSize: 15.0,
              color: Color(0xFFCD5D37),
            ),
          ),
        ),
      ),
    );
  }
}
