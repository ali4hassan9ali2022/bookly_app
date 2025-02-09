import 'package:bookly_app/Core/Widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/Widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/Home/presentation/manger/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    urlImage:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            "",
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
