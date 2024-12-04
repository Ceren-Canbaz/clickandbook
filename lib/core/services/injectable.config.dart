// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clickandbook/core/services/register_module.dart' as _i838;
import 'package:clickandbook/features/category/data/datasources/category_data_source.dart'
    as _i872;
import 'package:clickandbook/features/category/data/datasources/category_data_source_impl.dart'
    as _i80;
import 'package:clickandbook/features/category/data/repositories/category_repository_impl.dart'
    as _i633;
import 'package:clickandbook/features/category/domain/repositories/category_repository.dart'
    as _i1021;
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i872.CategoryDataSource>(() =>
        _i80.CategoryDataSourceImpl(firestore: gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i1021.CategoryRepository>(() =>
        _i633.CategoryRepositoryImpl(
            categoryDataSource: gh<_i872.CategoryDataSource>()));
    return this;
  }
}

class _$FirebaseModule extends _i838.FirebaseModule {}
