import 'package:bookly_app/Features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
