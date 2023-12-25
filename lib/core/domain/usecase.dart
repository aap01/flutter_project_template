import 'package:dartz/dartz.dart';
import 'package:resume_app/core/domain/failure.dart';

abstract class Usecase<TOut, TIn> {
  Future<Either<Failure, TOut>> call(TIn tIn);
}
