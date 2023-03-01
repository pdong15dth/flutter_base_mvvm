import 'package:flutter_base_mvvm/data/network/failure.dart';
import 'package:flutter_base_mvvm/domain/model/model.dart';
import 'package:flutter_base_mvvm/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';

import 'base_usecase.dart';

class StoreDetailsUseCase extends BaseUseCase<void, StoreDetails> {
  Repository repository;

  StoreDetailsUseCase(this.repository);

  @override
  Future<Either<Failure, StoreDetails>> execute(void input) {
    return repository.getStoreDetails();
  }
}
