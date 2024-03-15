import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    ThemeData textTheme = Theme.of(context);
    return Column(
      children: [
        SizedBox(height: 150, width: mediaQuery.width),
        Image.asset('assets/images/radio_logo.png'),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'إذاعة القرآن الكريم',
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous_sharp,
                size: 50,
                color: theme.primaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_sharp,
                size: 50,
                color: theme.primaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next_sharp,
                size: 50,
                color: theme.primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
