import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:resume_app/core/domain/failure.dart';
import 'package:resume_app/feature/profile/domain/entity/profile.dart';
import 'package:resume_app/feature/profile/domain/repository/profile_repository.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<Failure, Profile>> getMyProfile() {
    return Future.value(right(
      const Profile(name: 'Alif', imageUrl: 'unknown'),
    ));
  }
}
