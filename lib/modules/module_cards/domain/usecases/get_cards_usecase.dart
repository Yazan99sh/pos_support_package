import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:support_pkg/core/base/usecase/usecase.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_cards/data/request/get_cards_request.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/cards_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/repository/cards_repository.dart';


@lazySingleton
class GetCardsUseCase
    extends UseCase<CardsEntity, GetCardRequest> {
  final CardsRepository repository;

  GetCardsUseCase({required this.repository});

  @override
  Future<Either<Failure, CardsEntity>> call(params) {
    return repository.getBusinessCards(params.businessesId ,params);
  }

}
