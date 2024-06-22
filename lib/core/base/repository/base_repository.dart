import 'package:dartz/dartz.dart';
import 'package:support_pkg/core/entities/failures.dart';

typedef FutureEitherFailureOrData<T> = Future<Either<Failure, T>> Function();

abstract class BaseRepository {
  Future<Either<Failure, T>> request<T>(
      FutureEitherFailureOrData<T> body,
      );
}