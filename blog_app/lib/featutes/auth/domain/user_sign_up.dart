import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecases/usecase.dart';
import 'package:blog_app/featutes/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements UseCase<String, userSignUpParams> {
  //AuthRepository cannot depend on data layer here must depend on interface!!!
  final AuthRepository authRepository;
  const UserSignUp(this.authRepository);
  @override
  Future<Either<Failure, String>> call(userSignUpParams params) async {
    //don't forget return
    return await authRepository.signUpWithEmailPassword(
        name: params.name, email: params.email, password: params.password);
  }
}

class userSignUpParams {
  final String email;
  final String password;
  final String name;

  userSignUpParams(
      {required this.email, required this.password, required this.name});
}
