import 'package:flutter_base_mvvm/app/functions.dart';
import 'package:flutter_base_mvvm/data/network/failure.dart';
import 'package:flutter_base_mvvm/data/request/request.dart';
import 'package:flutter_base_mvvm/domain/model/model.dart';
import 'package:flutter_base_mvvm/domain/repository/repository.dart';
import 'package:flutter_base_mvvm/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
    DeviceInfo deviceInfo = await getDeviceDetails();
    return await _repository.login(LoginRequest(
        input.email, input.password, deviceInfo.identifier, deviceInfo.name));
  }
}

class LoginUseCaseInput {
  String email;
  String password;

  LoginUseCaseInput(this.email, this.password);
}
