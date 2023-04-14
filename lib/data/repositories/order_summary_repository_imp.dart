import 'dart:developer';

import 'package:base/data/constans.dart';
import 'package:base/data/models/order_summry_model.dart';
import 'package:base/data/failure.dart';
import 'package:base/domain/repository/order_summary_repository.dart';
import 'package:either_dart/src/either.dart';

import '../datasources/remote_data_source.dart';

class OrderSummaryRepositoryImp extends OrderSummaryRepository {
  final RemoteDataSource remoteDataSource;

  OrderSummaryRepositoryImp({required this.remoteDataSource});
  @override
  Future<Either<Failure, Seller>> getOrderSummary() async {
    try {
      final result = 
      await remoteDataSource.httpRequest(filePath: Constans.getSellerSummary);
      var data = Seller.fromJson(result);
      return Right(data);
    } catch (e) {
      log(e.toString());
      return const Left(ServerFailure('Failed to connect to the network'));
    }
  }
}
