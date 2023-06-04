import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/media_query_values.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.2,
      height: context.height * 0.05,
      child: TextField(
        cursorColor: darkBlack,
        decoration: InputDecoration(
          fillColor: lightBlack.withOpacity(0.4),
          filled: true,
          contentPadding: EdgeInsets.zero,
          prefixIcon: Icon(Icons.search, size: 18.0, color: Colors.grey[200]),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: darkBlack),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: darkBlack, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: darkBlack, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: darkBlack, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: lightBlack, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Search',
          hintStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.grey[200], fontSize: 14.0),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
