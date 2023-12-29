import 'package:freezed_annotation/freezed_annotation.dart';

///import foundation for better readablity in Flutter's devtool
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:resume_app/core/domain/failure.dart';
import 'package:resume_app/feature/profile/domain/entity/profile.dart';

part 'profile_screen_state.freezed.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState.initial() = _initial;
  const factory ProfileScreenState.loading() = _loading;
  const factory ProfileScreenState.loaded({
    required Profile profile,
  }) = _loaded;

  const factory ProfileScreenState.failure({
    required Failure failure,
  }) = _failure;
}
