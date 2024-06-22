import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:support_pkg/core/base/repository/base_repository_impl.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_cards/data/datasource/remote/cards_remote_datasource.dart';
import 'package:support_pkg/modules/module_cards/data/request/create_card_request.dart';
import 'package:support_pkg/modules/module_cards/data/request/get_cards_request.dart';
import 'package:support_pkg/modules/module_cards/data/response/business_response.dart';
import 'package:support_pkg/modules/module_cards/data/response/get_cards_response.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/businesse_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/cards_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/repository/cards_repository.dart';


@LazySingleton(as: CardsRepository)
class CardsRepositoryImp extends BaseRepositoryImpl
    implements CardsRepository {
  final CardsRemoteDataSource remote;

  final Logger logger;
  CardsRepositoryImp(this.remote, this.logger) : super(logger);

  @override
  Future<Either<Failure, List<BusinessEntity>>> getBusinesses(String name) {
    return request(() async {
      final result = await remote.getBusinesses(name);
      return Right(result.businesses?.map((e) => e.toEntity()).toList() ?? []);
    });
  }

  @override
  Future<Either<Failure, CardsEntity>> getBusinessCards(String businessId,GetCardRequest cardRequest) {
    return request(() async {
      final result = await remote.getBusinessesCards(businessId ,cardRequest);
      return Right(result.toEntity());
    });
  }

  @override
  Future<Either<Failure, void>> createBusinessCards(CreateCardRequest cardRequest) {
    return request(() async {
      final result = await remote.createBusinessCards(cardRequest);
      return Right(result);
    });
  }
}