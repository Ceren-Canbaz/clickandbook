import 'package:clickandbook/features/category/data/models/category.dart';

abstract class CategoryDataSource {
  Future<List<Category>> getCategories();
}
