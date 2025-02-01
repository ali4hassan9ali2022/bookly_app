import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Future, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Future, List<BookModel>>> fetchFeatureBooks();
}
