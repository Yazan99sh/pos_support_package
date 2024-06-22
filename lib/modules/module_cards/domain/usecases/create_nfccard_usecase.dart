import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:support_pkg/core/base/usecase/usecase.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_cards/data/request/create_card_request.dart';
import 'package:support_pkg/modules/module_cards/domain/repository/cards_repository.dart';
@lazySingleton
class CreateNfcCardUseCase extends UseCase<void, CreateCardRequest> {
  final CardsRepository repository;

  CreateNfcCardUseCase({required this.repository});

  @override
  Future<Either<Failure, void>> call(params) {
    return repository.createBusinessCards(params);
  }
}
