import 'package:flutter/material.dart';

class GlobalTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final IconData? prefixIcon;
  final String caption;
  final TextEditingController? controller;
  final ValueChanged? onChanged;

  const GlobalTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    this.prefixIcon,
    required this.caption,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  _GlobalTextFieldState createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  bool _isPasswordVisible = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.caption.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              widget.caption,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          cursorColor: Colors.grey,
          cursorHeight: 25,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle:const  TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.w400),
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    color: Colors.grey,
                  )
                : null,
            suffixIcon: widget.keyboardType == TextInputType.visiblePassword
                ? IconButton(
                    splashRadius: 1,
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),

          ),
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,

        ),
      ],
    );
  }
}
