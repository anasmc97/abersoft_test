// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:abersoft_test/core/di/storage_module.dart' as _i17;
import 'package:abersoft_test/core/storages/local_storages.dart' as _i5;
import 'package:abersoft_test/feature/login/data/datasources/remote/auth_remote_data_source.dart'
    as _i9;
import 'package:abersoft_test/feature/login/data/repositories/auth_repository_impl.dart'
    as _i11;
import 'package:abersoft_test/feature/login/domain/repositories/auth_repository.dart'
    as _i10;
import 'package:abersoft_test/feature/login/domain/usecases/login_usecase.dart'
    as _i14;
import 'package:abersoft_test/feature/login/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i16;
import 'package:abersoft_test/feature/product/data/datasources/remote/product_remote_data_source.dart'
    as _i6;
import 'package:abersoft_test/feature/product/data/repositories/product_repository_impl.dart'
    as _i8;
import 'package:abersoft_test/feature/product/domain/repositories/product_repository.dart'
    as _i7;
import 'package:abersoft_test/feature/product/domain/usecases/create_product_usecase.dart'
    as _i12;
import 'package:abersoft_test/feature/product/domain/usecases/load_product_usecase.dart'
    as _i13;
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_bloc.dart'
    as _i15;
import 'package:abersoft_test/shared/flash/presentation/blocs/cubit/flash_cubit.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final storageModule = _$StorageModule();
    gh.factory<_i3.FlashCubit>(() => _i3.FlashCubit());
    await gh.lazySingletonAsync<_i4.SharedPreferences>(
      () => storageModule.sharedPreference,
      preResolve: true,
    );
    gh.lazySingleton<_i5.LocalStorage>(
        () => _i5.LocalStorageImpl(gh<_i4.SharedPreferences>()));
    gh.lazySingleton<_i6.ProductRemoteDataSource>(
        () => _i6.ProductRemoteDataSourceImpl(gh<_i5.LocalStorage>()));
    gh.lazySingleton<_i7.ProductRepository>(() => _i8.ProductRepositoryImpl(
        remoteDataSource: gh<_i6.ProductRemoteDataSource>()));
    gh.lazySingleton<_i9.AuthRemoteDataSource>(
        () => _i9.AuthRemoteDataSourceImpl(gh<_i5.LocalStorage>()));
    gh.lazySingleton<_i10.AuthRepository>(() => _i11.AuthRepositoryImpl(
        remoteDataSource: gh<_i9.AuthRemoteDataSource>()));
    gh.lazySingleton<_i12.CreateProductUsecase>(
        () => _i12.CreateProductUsecase(gh<_i7.ProductRepository>()));
    gh.lazySingleton<_i13.LoadProductUsecase>(
        () => _i13.LoadProductUsecase(gh<_i7.ProductRepository>()));
    gh.lazySingleton<_i14.LoginUsecase>(
        () => _i14.LoginUsecase(gh<_i10.AuthRepository>()));
    gh.factory<_i15.ProductBloc>(() => _i15.ProductBloc(
          gh<_i13.LoadProductUsecase>(),
          gh<_i12.CreateProductUsecase>(),
        ));
    gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(gh<_i14.LoginUsecase>()));
    return this;
  }
}

class _$StorageModule extends _i17.StorageModule {}
