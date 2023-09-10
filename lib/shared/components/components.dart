
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';


/// TEXT FROM FIELD
Widget defaultTextFormField(
    {required String hintText,
      required TextEditingController controller,
      required TextInputType keyboardType,
      String? Function(String? value)? validator,
      bool isSuffix = false,
      bool isEnabled = true,
      bool isObscure = false,
      IconData? suffixIcon,
      IconData? prefixIcon,
      int? maxLength,
      Function()? suffixPressFunction,
      Function()? prefixPressFunction,
      Function()? onTapFunction,
      ValueChanged<String>? onSubmit,
      Color prefixIconColor = Colors.grey,
      Color suffixIconColor = Colors.grey}) =>
    Container(
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
              offset: Offset(0.0, 0.75)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          onFieldSubmitted: onSubmit,
          maxLength: maxLength,
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxLength),
            // Apply a formatter to limit the length
          ],
          style: const TextStyle(
            fontFamily: "Roboto",
            fontSize: 16.0,
          ),
          onTap: onTapFunction,
          enabled: isEnabled,
          obscureText: isObscure,
          validator: validator,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            counterText: '',
            //To Hide MaxLength
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            hintText: hintText,
            border: InputBorder.none,
            prefixIcon: prefixIcon != null
                ? IconButton(
              icon: Icon(
                prefixIcon,
                color: prefixIconColor,
              ),
              onPressed: prefixPressFunction,
            )
                : null,
            suffixIcon: suffixIcon != null
                ? IconButton(
              icon: Icon(
                suffixIcon,
                color: suffixIconColor,
              ),
              onPressed: suffixPressFunction,
            )
                : null,
          ),
        ),
      ),
    );



// Button
Widget defaultButton({
  double height = 60.0,
  double width = double.infinity,
  Color buttonColor = primaryColor,
  String? text,
  Color textColor = Colors.white,
  bool isBold = false,
  double fontSize = 18.0,
  required Function() onPress,
  Widget? child,
}) =>
    Container(
      height: height,
      width: width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0.0, 0.75),
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: onPress,
        child: child ??
            Text(
              text ?? "",
              style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                fontFamily: 'Roboto',
                color: textColor,
                fontSize: fontSize,
              ),
            ),
      ),
    );