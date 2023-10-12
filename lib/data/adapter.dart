
import 'package:hive/hive.dart';

import 'product_model.dart';

class ProductAdapter extends TypeAdapter<ProductModel>{
  @override
  ProductModel read(BinaryReader reader) {
    final name = reader.read() as String;
    final id = reader.read() as int;
    final count = reader.read() as int;
    final qrCode = reader.read() as String;



    return ProductModel(name: name, id: id, count: count,qrCode: qrCode);
  }

  @override
  final int typeId = 0;

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer..write(obj.name)
      ..write(obj.id)
      ..write(obj.qrCode)
      ..write(obj.count);
  }

}