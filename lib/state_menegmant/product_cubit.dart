import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop_helper/data/product_model.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super( ProductState(productModel: ProductModel.initial()));


  addProduct(ProductModel productModel)async{
    emit(state.copyWith(states: States.initial));
    Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(states: States.buy,productModel: productModel));
  }

  buyProduct(){

  }


}
