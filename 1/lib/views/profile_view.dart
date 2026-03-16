import 'package:flutter/material.dart';

import '../models/user_profile.dart';
import '../utils/app_constants.dart';
import '../widget/profile_info.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const UserProfile profile = UserProfile(
    name: 'Nguyen Van A',
    email: 'nguyenvana@gmail.com',
    avatarUrl: 'https://i.pravatar.cc/300?img=12',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profile.avatarUrl),
            ),
            const SizedBox(height: 20),
            ProfileInfo(label: 'Name', value: profile.name),
            const SizedBox(height: 12),
            ProfileInfo(label: 'Email', value: profile.email),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
            const SizedBox(height: 16),
            const Text('MSSV: $studentId'),
          ],
        ),
      ),
    );
  }
}
