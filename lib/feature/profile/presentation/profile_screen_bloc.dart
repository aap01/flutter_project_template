import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:resume_app/feature/profile/domain/usecase/get_profile_usecase.dart';
import 'package:resume_app/feature/profile/presentation/profile_screen_state.dart';

@injectable
class ProfileScreenBloc extends Cubit<ProfileScreenState> {
  ProfileScreenBloc({
    required GetProfileUsecase getProfileUsecase,
  })  : _getProfileUsecase = getProfileUsecase,
        super(const ProfileScreenState.initial());

  final GetProfileUsecase _getProfileUsecase;

  Future<void> loadProfile() async {
    emit(const ProfileScreenState.loading());
    emit(await _getState());
  }

  Future<ProfileScreenState> _getState() {
    return _getProfileUsecase(NoParam()).then(
      (value) => value.fold(
        (l) => ProfileScreenState.failure(failure: l),
        (r) => ProfileScreenState.loaded(profile: r),
      ),
    );
  }
}
