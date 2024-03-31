import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/featutes/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/featutes/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

//repository connect to remote datasource
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userId = await remoteDataSource.signUpWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );
      //right use instead of failure and then userId
      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
