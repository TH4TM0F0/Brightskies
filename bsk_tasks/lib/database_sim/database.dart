import 'package:bsk_tasks/database_sim/product.dart';

class Database {
  List<Product> myProducts = [];

  Database() {
    print('Database is ready');
  }

  void addProduct({required Product product}) {
      myProducts.add(product);
  }
}