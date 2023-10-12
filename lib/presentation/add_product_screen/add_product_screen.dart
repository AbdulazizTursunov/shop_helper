import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_helper/presentation/add_product_screen/widget/qr_screen.dart';
import 'package:shop_helper/presentation/ui.dart';
import 'package:shop_helper/widget/global_text_field.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController countController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductCr(),
                    ));
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const GlobalTextField(
                hintText: 'Product name',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                caption: 'Product name'),
            const GlobalTextField(
                hintText: 'Product id',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                caption: 'Product id'),
            const GlobalTextField(
                hintText: 'Product count',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                caption: 'Product count'),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QRViewExample(),
                        ));
                  },
                  child:const  Center(
                      child: Text(
                    'QR CODE',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              ),
            ),
         const   SizedBox(height: 50),
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

                  },
                  child:const  Center(
                      child: Text(
                    'Add Product',
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
