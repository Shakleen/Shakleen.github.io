import 'package:flutter/material.dart';
import 'package:my_portfolio_website/presentation/view/desktop/desktop_home.dart';
import 'package:my_portfolio_website/presentation/view/landscape/landscape_home.dart';
import 'package:my_portfolio_website/presentation/view/portrait/portrait_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (_isMobile(sizingInformation)) {
          return OrientationLayoutBuilder(
            portrait: (context) => PortraitHome(),
            landscape: (context) => LandscapeHome(),
          );
        } else if (_isTablet(sizingInformation)) {
          return OrientationLayoutBuilder(
            portrait: (context) => PortraitHome(),
            landscape: (context) => LandscapeHome(),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => PortraitHome(),
          landscape: (context) => DesktopHome(),
        );
      },
    );
  }

  bool _isTablet(SizingInformation sizingInformation) =>
      sizingInformation.deviceScreenType == DeviceScreenType.tablet;

  bool _isMobile(SizingInformation sizingInformation) =>
      sizingInformation.deviceScreenType == DeviceScreenType.mobile;
}
