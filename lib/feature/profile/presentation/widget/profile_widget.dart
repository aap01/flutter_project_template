import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String profileImage;
  final String firstname;
  final String lastname;
  final String email;
  final String country;
  final String currentRole;
  final String workingSince;
  final String linkToGitHubProfile;
  final String linkedInProfile;
  final String linkToStackOverflowProfile;
  final String linkToUpworkProfile;
  const ProfileWidget({
    super.key,
    this.profileImage = '',
    this.firstname = '',
    this.lastname = '',
    this.email = '',
    this.country = '',
    this.currentRole = '',
    this.workingSince = '',
    this.linkToGitHubProfile = '',
    this.linkedInProfile = '',
    this.linkToStackOverflowProfile = '',
    this.linkToUpworkProfile = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(profileImage),
        Row(
          children: [
            Text(
              '$firstname $lastname',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ],
    );
  }
}
