import 'package:flutter/material.dart';

void showErrorSnackbar(BuildContext context, String? errorMessage) {
  if (errorMessage == null || errorMessage.isEmpty) {
    return;
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 5),
      backgroundColor: Theme.of(context).colorScheme.error,
      showCloseIcon: true,
      width: MediaQuery.of(context).size.width * 0.5,
      content: Text(
        errorMessage,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.onError,
        ),
      ),
    ),
  );
}
