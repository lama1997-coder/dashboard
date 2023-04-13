




import 'package:base/data/failure.dart';
import 'package:base/data/models/order_summry_model.dart';
import 'package:either_dart/either.dart';

abstract class OrderSummaryRepository {

 Future<Either<Failure,Seller>>getOrderSummary();



}