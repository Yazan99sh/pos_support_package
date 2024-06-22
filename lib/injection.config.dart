// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;
import 'package:support_pkg/core/configurations/configuration.dart' as _i10;
import 'package:support_pkg/core/module_localization/presistance/localization_preferences_helper/localization_preferences_helper.dart'
    as _i3;
import 'package:support_pkg/core/module_localization/service/localization_service/localization_service.dart'
    as _i11;
import 'package:support_pkg/core/module_theme/pressistance/theme_preferences_helper.dart'
    as _i4;
import 'package:support_pkg/core/module_theme/service/theme_service/theme_service.dart'
    as _i14;
import 'package:support_pkg/injectable_module.dart' as _i23;
import 'package:support_pkg/modules/module_auth/data/datasource/remote/support_auth_remote_datasource.dart'
    as _i13;
import 'package:support_pkg/modules/module_auth/data/presistance/support_auth_prefs_helper.dart'
    as _i5;
import 'package:support_pkg/modules/module_auth/domain/repository/support_auth_repository.dart'
    as _i20;
import 'package:support_pkg/modules/module_auth/domain/repository/support_auth_repository_imp.dart'
    as _i21;
import 'package:support_pkg/modules/module_auth/domain/usecases/login_usecase.dart'
    as _i22;
import 'package:support_pkg/modules/module_auth/presentation/controller/login/logic/login_controller_logic.dart'
    as _i8;
import 'package:support_pkg/modules/module_cards/data/datasource/remote/cards_remote_datasource.dart'
    as _i12;
import 'package:support_pkg/modules/module_cards/domain/repository/cards_repository.dart'
    as _i15;
import 'package:support_pkg/modules/module_cards/domain/repository/cards_repository_imp.dart'
    as _i16;
import 'package:support_pkg/modules/module_cards/domain/usecases/create_nfccard_usecase.dart'
    as _i17;
import 'package:support_pkg/modules/module_cards/domain/usecases/get_businesses_usecase.dart'
    as _i18;
import 'package:support_pkg/modules/module_cards/domain/usecases/get_cards_usecase.dart'
    as _i19;
import 'package:support_pkg/modules/module_cards/presentation/controller/logic/manage_cards_logic.dart'
    as _i9;

const String _staging = 'staging';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableSupportModule = _$InjectableSupportModule();
    gh.factory<_i3.LocalizationPreferencesHelper>(
        () => _i3.LocalizationPreferencesHelper());
    gh.factory<_i4.ThemePreferencesHelper>(() => _i4.ThemePreferencesHelper());
    gh.factory<_i5.SupportAuthPrefsHelper>(() => _i5.SupportAuthPrefsHelper());
    gh.factory<_i6.Dio>(() => injectableSupportModule.dioInstance);
    gh.factory<_i7.Logger>(() => injectableSupportModule.logger);
    gh.lazySingleton<_i8.SupportLoginLogic>(() => _i8.SupportLoginLogic());
    gh.lazySingleton<_i9.ManageCardsLogic>(() => _i9.ManageCardsLogic());
    gh.lazySingleton<_i10.Configuration>(
      () => _i10.StagingConfiguration(),
      registerFor: {_staging},
    );
    gh.lazySingleton<_i10.Configuration>(
      () => _i10.DevConfiguration(),
      registerFor: {_dev},
    );
    gh.factory<_i11.LocalizationService>(() =>
        _i11.LocalizationService(gh<_i3.LocalizationPreferencesHelper>()));
    gh.lazySingleton<_i12.CardsRemoteDataSource>(
        () => _i12.CardsRemoteDataSourceImpl(
              gh<_i6.Dio>(),
              gh<_i10.Configuration>(),
            ));
    gh.lazySingleton<_i13.SupportAuthRemoteDataSource>(
        () => _i13.SupportAuthRemoteDataSourceImpl(
              gh<_i6.Dio>(),
              gh<_i10.Configuration>(),
            ));
    gh.lazySingleton<_i10.Configuration>(
      () => _i10.ProductionConfiguration(),
      registerFor: {_prod},
    );
    gh.factory<_i14.AppThemeDataService>(
        () => _i14.AppThemeDataService(gh<_i4.ThemePreferencesHelper>()));
    gh.lazySingleton<_i15.CardsRepository>(() => _i16.CardsRepositoryImp(
          gh<_i12.CardsRemoteDataSource>(),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i17.CreateNfcCardUseCase>(() =>
        _i17.CreateNfcCardUseCase(repository: gh<_i15.CardsRepository>()));
    gh.lazySingleton<_i18.GetBusinessesUseCase>(() =>
        _i18.GetBusinessesUseCase(repository: gh<_i15.CardsRepository>()));
    gh.lazySingleton<_i19.GetCardsUseCase>(
        () => _i19.GetCardsUseCase(repository: gh<_i15.CardsRepository>()));
    gh.lazySingleton<_i20.SupportAuthRepository>(
        () => _i21.SupportAuthRepositoryImp(
              gh<_i13.SupportAuthRemoteDataSource>(),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i22.SupportLoginUseCase>(() =>
        _i22.SupportLoginUseCase(repository: gh<_i20.SupportAuthRepository>()));
    return this;
  }
}

class _$InjectableSupportModule extends _i23.InjectableSupportModule {}
