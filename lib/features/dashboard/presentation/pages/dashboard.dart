import 'package:DarkwebScan/core/platform/app_image.dart';
import 'package:DarkwebScan/core/platform/app_theme.dart';
import 'package:DarkwebScan/core/utilities/show_platform_dialog.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/pages/scan_results.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/state/darkweb_scan_cubit.dart';
import 'package:DarkwebScan/features/dashboard/presentation/widgets/launcher_icon.dart';
import 'package:DarkwebScan/features/dashboard/presentation/widgets/section_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../darkweb_scan/presentation/pages/monitoring_intro.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final sc = SizeConfig(context: context);
    const _logoSize = 80.0;
    const _headerIconSize = 30.0;
    const _launcherIconSize = 60.0;
    // const _headerVerticalMargin = 50.0;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Builder(
          builder: (context) => BlocListener<DarkwebScanCubit, DarkwebScanState>(
            listener: (_, state) {
              state.maybeWhen(
                loaded: (payload) async {
                  Scaffold.of(context).removeCurrentSnackBar();

                  final _alert = AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text(
                          "No",
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const ScanResults()),
                          );
                        },
                        child: const Text(
                          "Yes",
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      )
                    ],
                    title: const Text("Scan results ready!"),
                    content: const Text("Your dark web scan results are ready. Would you like to view them?"),
                  );

                  await showPlatformDialog(
                    context: context,
                    builder: (_) => _alert,
                  );
                },
                loading: (_) => Scaffold.of(context).showSnackBar(
                  const SnackBar(content: Text("Scanning...")),
                ),
                error: (payload) {
                  Scaffold.of(context).removeCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text(payload.error)));
                },
                orElse: () {},
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.logo,
                    width: _logoSize,
                    height: _logoSize,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // /////////////////////////
                        // Social Media Privacy   *
                        // /////////////////////////
                        _Header(
                          title: "Social Media Privacy",
                          icon: Image.asset(
                            AppImages.globe,
                            color: AppColors.primaryColor,
                            width: _headerIconSize,
                            height: _headerIconSize,
                          ),
                        ),
                        Wrap(
                          spacing: 30.0,
                          runAlignment: WrapAlignment.start,
                          children: [
                            LauncherIcon(
                              icon: SvgPicture.asset(
                                AppImages.facebook,
                                color: AppColors.primaryColor,
                                width: _launcherIconSize,
                                height: _launcherIconSize,
                              ),
                              label: "Facebook",
                              onPress: () {},
                            ),
                            LauncherIcon(
                              icon: SvgPicture.asset(
                                AppImages.google,
                                color: AppColors.primaryColor,
                                width: _launcherIconSize,
                                height: _launcherIconSize,
                              ),
                              label: "Google",
                              onPress: () {},
                            ),
                            LauncherIcon(
                              icon: SvgPicture.asset(
                                AppImages.facebook,
                                color: AppColors.primaryColor,
                                width: _launcherIconSize,
                                height: _launcherIconSize,
                              ),
                              label: "Instagram",
                              onPress: () {},
                            ),
                            LauncherIcon(
                              icon: SvgPicture.asset(
                                AppImages.facebook,
                                color: AppColors.primaryColor,
                                width: _launcherIconSize,
                                height: _launcherIconSize,
                              ),
                              label: "LinkedIn",
                              onPress: () {},
                            )
                          ],
                        ),
                        const SectionSpacer(),

                        // /////////////////////////
                        // Privacy Monitoring    *
                        // /////////////////////////
                        _Header(
                          title: "Privacy Monitoring",
                          icon: SvgPicture.asset(
                            AppImages.privacyGroup,
                            color: AppColors.primaryColor,
                            width: _headerIconSize,
                            height: _headerIconSize,
                          ),
                        ),
                        Wrap(
                          spacing: 30.0,
                          runAlignment: WrapAlignment.start,
                          children: [
                            LauncherIcon(
                              icon: SvgPicture.asset(
                                AppImages.linkedin,
                                color: AppColors.primaryColor,
                                width: _launcherIconSize,
                                height: _launcherIconSize,
                              ),
                              label: "Data Broker",
                              onPress: () {},
                            ),
                            LauncherIcon(
                              icon: Image.asset(
                                AppImages.darkweb,
                                width: _launcherIconSize,
                                height: _launcherIconSize,
                              ),
                              label: "Dark Web",
                              onPress: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const MonitoringIntro(),
                                ));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  final Widget icon;

  const _Header({
    Key key,
    @required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _headerIconGap = 10.0;

    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Row(
        children: [
          icon,
          const SizedBox(width: _headerIconGap),
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
