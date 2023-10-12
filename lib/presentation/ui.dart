import 'package:flutter/material.dart';
import 'package:shop_helper/presentation/add_product_screen/add_product_screen.dart';

class ProductCr extends StatefulWidget {
  const ProductCr({Key? key}) : super(key: key);

  @override
  State<ProductCr> createState() => _ProductCrState();
}

class _ProductCrState extends State<ProductCr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 65,
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddScreen(),
                        ));
                  },
                  child: const Center(
                      child: Text(
                    'Add Product',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ),
            const  SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 65,
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                      child: Text(
                    'Buy Product',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
