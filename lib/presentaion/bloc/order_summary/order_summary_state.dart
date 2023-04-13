import 'package:base/data/models/order_summry_model.dart';
import 'package:equatable/equatable.dart';

abstract class OrderSummaryState extends Equatable {
  const OrderSummaryState();

  @override
  List<Object?> get props => [];
}

class OrderSummaryEmpty extends OrderSummaryState {}

class OrderSummaryLoading extends OrderSummaryState {}

class OrderSummaryError extends OrderSummaryState {
  final String message;

  OrderSummaryError(this.message);

  @override
  List<Object?> get props => [message];
}

class OrderSummaryHasData extends OrderSummaryState {
  final Seller result;

  OrderSummaryHasData(this.result);

  @override
  List<Object?> get props => [result];
}
