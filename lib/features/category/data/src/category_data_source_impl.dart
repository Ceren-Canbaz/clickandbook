class FirebaseCategoryRepository implements CategoryRepository {
  final CategoryDataSource dataSource;

  FirebaseCategoryRepository({required this.dataSource});

  @override
  Future<List<Category>> getCategories() async {
    return await dataSource.getCategories();
  }
}
