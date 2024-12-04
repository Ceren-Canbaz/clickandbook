import 'package:clickandbook/features/category/data/models/category.dart';

abstract class CategoryRepository {
  Future<List<Category>> getCategories();
}
