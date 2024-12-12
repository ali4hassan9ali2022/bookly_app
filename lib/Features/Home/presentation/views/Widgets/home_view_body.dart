import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Styles.titleMediun,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
