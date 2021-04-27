import 'package:flutter/material.dart';

class SectionSpacer extends StatelessWidget {
  const SectionSpacer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: const [
          SizedBox(height: 25),
          Divider(),
          SizedBox(height: 25),
        ],
      );
}
