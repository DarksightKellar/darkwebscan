import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:flutter/material.dart';

class BreachTile extends StatelessWidget {
  final BreachModel breach;

  const BreachTile(
    this.breach, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: const Color(0xffEAEAEA),
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Image.network(
                  breach.logoPath,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                color: const Color(0xffFAFAFA),
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: "Compromised data: ",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "${breach.compromisedData.join(", ")}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      );
}
