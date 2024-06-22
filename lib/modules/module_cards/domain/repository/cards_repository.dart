import 'package:dartz/dartz.dart';
import 'package:support_pkg/core/base/repository/base_repository.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_cards/data/request/get_cards_request.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/businesse_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/cards_entity.dart';

import '../../data/request/create_card_request.dart';
abstract class CardsRepository extends BaseRepository {

  Future<Either<Failure, List<BusinessEntity>>> getBusinesses(String name);

  Future<Either<Failure, CardsEntity>> getBusinessCards(String businessId,GetCardRequest cardRequest);

  Future<Either<Failure,void>> createBusinessCards(CreateCardRequest cardRequest);


}
