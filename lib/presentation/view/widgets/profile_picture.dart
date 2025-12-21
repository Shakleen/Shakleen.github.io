import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/images/profile-picture.jpeg',
        fit: BoxFit.cover,
        width: 150,
        height: 150,
      ),
    );
  }
}
