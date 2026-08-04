import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:bsk_tasks/data/models/product_model.dart';

part 'product_api.g.dart';

@RestApi()
abstract class ProductApi {
  factory ProductApi(Dio dio, {String baseUrl}) = _ProductApi;

  @GET('/products')
  Future<List<ProductModel>> getProducts({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });
}
