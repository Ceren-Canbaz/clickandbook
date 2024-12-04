import 'package:clickandbook/features/category/data/models/category.dart';
import 'package:clickandbook/features/category/data/datasources/category_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoryDataSource)
class CategoryDataSourceImpl implements CategoryDataSource {
  final FirebaseFirestore _firestore;

  CategoryDataSourceImpl({required FirebaseFirestore firestore})
      : _firestore = firestore;

  @override
  Future<List<Category>> getCategories() async {
    try {
      final querySnapshot = await _firestore.collection('categories').get();
      return querySnapshot.docs
          .map((doc) => Category.fromFirestore(doc))
          .toList();
    } catch (e) {
      throw Exception('Failed to load categories: $e');
    }
  }
}
