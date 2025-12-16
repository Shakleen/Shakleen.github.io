import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(
  BuildContext context,
  String url,
  String failMessage,
  String errorMessage,
) async {
  final Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    if (!await launchUrl(uri)) {
      if (context.mounted) {
        showErrorSnackbar(context, errorMessage);
      }

      log("Failed to launch Uri: $uri");
    }
  } else if (context.mounted) {
    showErrorSnackbar(context, failMessage);
  }

  log("Can't launch URL: $url");
}
