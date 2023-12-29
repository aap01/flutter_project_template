import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:resume_app/core/domain/failure.dart';
import 'package:resume_app/core/domain/usecase.dart';
import 'package:resume_app/feature/profile/domain/repository/profile_repository.dart';

import '../entity/profile.dart';

@injectable
class GetProfileUsecase implements Usecase<Profile, NoParam> {
  final ProfileRepository _profileRepository;

  GetProfileUsecase({
    required ProfileRepository profileRepository,
  }) : _profileRepository = profileRepository;

  @override
  Future<Either<Failure, Profile>> call(NoParam tIn) =>
      _profileRepository.getMyProfile();
}

class NoParam {}
