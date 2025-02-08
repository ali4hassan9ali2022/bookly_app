import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
