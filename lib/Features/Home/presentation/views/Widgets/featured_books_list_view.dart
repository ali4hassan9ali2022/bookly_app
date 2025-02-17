import 'package:bookly_app/Core/Widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/Widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[0]);
                    },
                    child: CustomBookImage(
                      urlImage:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              "",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
