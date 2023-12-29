import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:resume_app/core/domain/failure.dart';
import 'package:resume_app/feature/profile/domain/entity/profile.dart';
import 'package:resume_app/feature/profile/domain/repository/profile_repository.dart';
import 'package:resume_app/gen/assets.gen.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<Failure, Profile>> getMyProfile() {
    return Future.value(
      right(
        Profile(name: 'Alif', imageUrl: Assets.profile.profile.path),
      ),
    );
  }
}
