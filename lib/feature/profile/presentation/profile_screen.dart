import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_app/feature/profile/presentation/profile_screen_state.dart';
import 'package:resume_app/feature/profile/presentation/widget/profile_widget.dart';
import 'package:resume_app/feature/profile/presentation/profile_screen_bloc.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileScreenBloc profileScreenBloc;
  const ProfileScreen({
    super.key,
    required this.profileScreenBloc,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: profileScreenBloc..loadProfile()),
      ],
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
            builder: (ctx, state) {
              return state.maybeWhen(
                loading: () => const CircularProgressIndicator(),
                loaded: (profile) => ProfileWidget(
                  firstname: profile.name,
                  profileImage: profile.imageUrl,
                ),
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}
