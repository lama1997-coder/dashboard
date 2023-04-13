import 'package:equatable/equatable.dart';

abstract class OrderSummaryEvent extends Equatable {
  const OrderSummaryEvent();

  @override
  List<Object?> get props => [];
}

class OnReloadChanged extends OrderSummaryEvent {

  OnReloadChanged();

  @override
  List<Object?> get props => [];
}