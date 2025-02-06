import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/Widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}


// const Padding(
//       padding: EdgeInsets.symmetric(horizontal: 30),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomAppBar(),
//           FeaturedBooksListView(),
//           SizedBox(
//             height: 50,
//           ),
//           Text(
//             "Best Seller",
//             style: Styles.textStyle18,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           BestSellerListViewItem(),
//         ],
//       ),
//     );
