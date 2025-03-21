import 'package:e_commerce/app/app_configs.dart';
import 'package:e_commerce/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(AssetsPath.logoSvg, width: 120),
              Spacer(),
              CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text("${AppLocalizations.of(context)!.version} ${AppConfigs.currentAppVersion}"),
            ],
          ),
        ),
      ),
    );
  }
}
