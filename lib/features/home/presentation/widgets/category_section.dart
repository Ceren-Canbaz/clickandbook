import 'package:clickandbook/core/services/injectable.dart';
import 'package:clickandbook/features/category/category_item.dart';
import 'package:clickandbook/core/style/widgets/title_text.dart';
import 'package:clickandbook/features/category/domain/repositories/category_repository.dart';
import 'package:clickandbook/features/category/presentation/cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(
        categoryRepository: locator<CategoryRepository>(),
      )..fetchCategories(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TitleText(
              text: "Kategoriler",
            ),
          ),
          const SizedBox(height: 16),
          BlocBuilder<CategoryCubit, CategoryState>(
            builder: (context, state) {
              if (state is CategoryLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is CategoryLoaded) {
                final categories = state.categories;
                return SizedBox(
                  height: 140,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryItem(
                        name: categories[index].name,
                        imageUrl: categories[index].photo,
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(width: 14),
                  ),
                );
              } else if (state is CategoryError) {
                return Center(
                  child: Text('Error: ${state.message}'),
                );
              }
              return const SizedBox(
                height: 140,
                child: Center(
                  child: Text('Henüz kategori yok.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
