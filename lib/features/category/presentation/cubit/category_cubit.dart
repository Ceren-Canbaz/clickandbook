import 'package:bloc/bloc.dart';
import 'package:clickandbook/features/category/data/models/category.dart';
import 'package:clickandbook/features/category/domain/repositories/category_repository.dart';
import 'package:equatable/equatable.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepository _categoryRepository;
  CategoryCubit({required CategoryRepository categoryRepository})
      : _categoryRepository = categoryRepository,
        super(CategoryInitial());
  Future<void> fetchCategories() async {
    try {
      emit(CategoryLoading());
      final categories = await _categoryRepository.getCategories();
      emit(CategoryLoaded(categories));
    } catch (e) {
      emit(
        CategoryError(
          e.toString(),
        ),
      );
    }
  }
}
