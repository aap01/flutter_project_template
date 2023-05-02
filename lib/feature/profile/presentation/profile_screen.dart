import 'package:flutter/material.dart';
import 'package:resume_app/feature/profile/presentation/widget/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ProfileWidget(
          firstname: 'Alif Arfab',
          lastname: 'Pavel',
          profileImage: 'assets/profile/profile.jpg',
        ),
      ),
    );
  }
}
