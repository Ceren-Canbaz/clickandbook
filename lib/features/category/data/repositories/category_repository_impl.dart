import 'package:clickandbook/features/category/data/datasources/category_data_source.dart';
import 'package:clickandbook/features/category/data/models/category.dart';
import 'package:clickandbook/features/category/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource _categoryDataSource;

  CategoryRepositoryImpl({required CategoryDataSource categoryDataSource})
      : _categoryDataSource = categoryDataSource;

  @override
  Future<List<Category>> getCategories() async {
    return await _categoryDataSource.getCategories();
  }
}
