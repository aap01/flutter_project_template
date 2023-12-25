import 'package:dartz/dartz.dart';
import 'package:resume_app/core/domain/failure.dart';

import '../entity/profile.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Profile>> getMyProfile();
}
