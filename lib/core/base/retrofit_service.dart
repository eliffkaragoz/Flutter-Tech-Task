import 'package:dio/dio.dart';

import '../data/network/api/rest_client.dart';

abstract class IRetrofitService<T> {
  final client = RestClient(Dio());

  Future<T>? getAll() {
    return null;
  }

  Future<T>? getById(String id) {
    return null;
  }

  Future<T>? createEntity(T entity) {
    return null;
  }
}
