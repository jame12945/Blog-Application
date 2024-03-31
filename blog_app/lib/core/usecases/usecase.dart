import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType, Params> {
  //usecase has one function
  Future<Either<Failure, SuccessType>> call(Params params);
}
