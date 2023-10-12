
import 'package:hive/hive.dart';

class ProductModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int id;
  @HiveField(2)
  final int count;
  @HiveField(3)
  final String qrCode;

  ProductModel(
      {required this.qrCode, required this.count, this.name = '', this.id = 0});


 ProductModel.initial() : this(name: '', id: 0, count: 0, qrCode: '');


}
