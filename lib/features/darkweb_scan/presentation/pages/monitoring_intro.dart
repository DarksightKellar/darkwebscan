import 'package:DarkwebScan/core/platform/app_image.dart';
import 'package:DarkwebScan/core/presentation/widgets/action_button.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/pages/cred_entry_view.dart';
import 'package:flutter/material.dart';

class MonitoringIntro extends StatelessWidget {
  const MonitoringIntro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.darkweb,
                  width: 120,
                  height: 120,
                ),
                const SizedBox(height: 55),
                Text(
                  "Control access to your personal data on Dark Web",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 25),
                Text(
                  "Vogel will monitor the dark web for data breaches that impact you.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 25),
                Text(
                  "Please provide your email and/or phone number. Vogel will provide you up-to-date data breach information using a dark web monitoring service.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 25),
                Material(
                  elevation: 5,
                  color: Colors.transparent,
                  child: ActionButton(
                    label: Text(
                      "Start",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                    ),
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const CredEntryView()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
