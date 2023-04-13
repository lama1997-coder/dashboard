import 'package:base/data/failure.dart';
import 'package:base/data/models/order_summry_model.dart';
import 'package:base/domain/repository/order_summary_repository.dart';
import 'package:either_dart/either.dart';
import 'package:http/retry.dart';

class GetOrderSummary {
  final OrderSummaryRepository orderSummaryRepository;
  GetOrderSummary(this.orderSummaryRepository);
  Future<Either<Failure, Seller>> getOrderSummary() {
    return orderSummaryRepository.getOrderSummary();
  }
}
