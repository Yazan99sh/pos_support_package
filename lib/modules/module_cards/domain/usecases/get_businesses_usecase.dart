import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:support_pkg/core/base/usecase/usecase.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/businesse_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/repository/cards_repository.dart';


@lazySingleton
class GetBusinessesUseCase
    extends UseCase<List<BusinessEntity>, String> {
  final CardsRepository repository;

  GetBusinessesUseCase({required this.repository});

  @override
  Future<Either<Failure, List<BusinessEntity>>> call(params) {
    return repository.getBusinesses(params);
  }

}