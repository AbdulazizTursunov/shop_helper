part of 'product_cubit.dart';

@immutable
class ProductState {
const  ProductState(
      {required this.productModel,
      this.errorText = '',
      this.states = States.initial});


   final ProductModel productModel;
  final String errorText;
  final States states;


  ProductState copyWith(
          {ProductModel? productModel, String? errorText, States? states}) =>
      ProductState(
          productModel: productModel ?? this.productModel,
          errorText: errorText ?? this.errorText,
          states: states ?? this.states);
}

enum States { initial, added, buy, failure }
