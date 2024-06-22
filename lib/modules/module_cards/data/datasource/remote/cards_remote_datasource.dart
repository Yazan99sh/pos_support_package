import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:support_pkg/core/configurations/configuration.dart';
import 'package:support_pkg/modules/module_cards/core/url/card_url.dart';
import 'package:support_pkg/modules/module_cards/data/request/create_card_request.dart';
import 'package:support_pkg/modules/module_cards/data/request/get_cards_request.dart';
import 'package:support_pkg/modules/module_cards/data/response/get_businesses_response.dart';
import 'package:support_pkg/modules/module_cards/data/response/get_cards_response.dart';
part 'cards_remote_datasource.g.dart';

abstract class CardsRemoteDataSource {
  Future<GetBusinessesResponse> getBusinesses(String name);
  Future<GetCardsResponse> getBusinessesCards(
      String businessId, GetCardRequest cardRequest);

  Future<void> createBusinessCards(CreateCardRequest cardRequest);
}

@LazySingleton(as: CardsRemoteDataSource)
@RestApi(baseUrl: '')
abstract class CardsRemoteDataSourceImpl implements CardsRemoteDataSource {
  @factoryMethod
  factory CardsRemoteDataSourceImpl(Dio dio, Configuration configuration) {
    return _CardsRemoteDataSourceImpl(dio,
        baseUrl: configuration.getSupportBaseUrl);
  }

  @override
  @GET('${CardsUrl.getBusinesses}/{name}')
  Future<GetBusinessesResponse> getBusinesses(@Path('name') String name);

  @override
  @POST(CardsUrl.getCardsForBusiness)
  Future<GetCardsResponse> getBusinessesCards(
      @Query('businessId') String businessId,
      @Body() GetCardRequest cardRequest);

  @override
  @POST(CardsUrl.createCards)
  Future<void> createBusinessCards(@Body() CreateCardRequest cardRequest);
}
