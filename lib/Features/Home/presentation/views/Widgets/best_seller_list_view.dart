import 'package:bookly_app/Core/Widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/Widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/Home/presentation/manger/newset_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(
                  books: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
