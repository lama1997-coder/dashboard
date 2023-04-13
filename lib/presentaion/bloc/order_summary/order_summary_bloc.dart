import 'package:base/domain/use_cases/get_order_summary.dart';
import 'package:base/presentaion/bloc/order_summary/order_summary_event.dart';
import 'package:bloc/bloc.dart';

import 'order_summary_state.dart';

class OrderSummaryBloc extends Bloc<OrderSummaryEvent, OrderSummaryState> {
  final GetOrderSummary _getOrderSummary;

  OrderSummaryBloc(this._getOrderSummary) : super(OrderSummaryEmpty()) {
    on<OnReloadChanged>((event, emit) async {
      emit(OrderSummaryLoading());

      final result = await _getOrderSummary.getOrderSummary();
      result.fold(
        (failure) {
          emit(OrderSummaryError(failure.message));
        },
        (data) {
          emit(OrderSummaryHasData(data));
        },
      );
    });
  }
}
