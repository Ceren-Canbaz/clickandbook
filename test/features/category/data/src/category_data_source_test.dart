import 'package:clickandbook/core/services/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:get_it/get_it.dart';
import 'package:clickandbook/features/category/data/datasources/category_data_source.dart';
import 'package:clickandbook/features/category/data/datasources/category_data_source_impl.dart';

class MockCategoryDataSource extends Mock implements CategoryDataSource {}

void main() {
  setUpAll(() {
    final getIt = GetIt.instance;

    getIt
        .registerLazySingleton<CategoryDataSource>(() => CategoryDataSourceImpl(
              firestore: locator<FirebaseFirestore>(),
            ));
  });

  setUp(() {});

  test('CategoryDataSource should be injected correctly', () {
    final categoryDataSource = GetIt.I<CategoryDataSource>();

    expect(categoryDataSource, isNotNull);

    expect(categoryDataSource, isA<CategoryDataSourceImpl>());
  });
}
