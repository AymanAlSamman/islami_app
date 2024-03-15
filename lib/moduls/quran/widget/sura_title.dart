import 'package:flutter/material.dart';

class SuraTitle extends StatelessWidget {
  final String suraNames;
  final String suraNumber;

  const SuraTitle(
      {super.key, required this.suraNames, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    ThemeData textTheme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            '$suraNumber',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          height: 38,
          width: 1,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            "$suraNames",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
