import 'package:clickandbook/features/category/data/models/category.dart';
import 'package:clickandbook/features/category/data/src/category_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoryDataSource)
class CategoryDataSourceImpl implements CategoryDataSource {
  @override
  Future<List<Category>> getCategories() {
    throw UnimplementedError();
  }
}
