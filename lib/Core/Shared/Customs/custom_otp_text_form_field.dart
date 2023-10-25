import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constants/colors_const.dart';

class CustomOtpTextFormField extends StatelessWidget {
  const CustomOtpTextFormField({
    super.key, this.onSaved,
  });
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 64,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return null;
        },
        onSaved: onSaved,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: ConstColors.whiteColor,
          fontSize: 24,
        ),
        keyboardType: TextInputType.number,
        cursorColor: ConstColors.primaryColor,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            height: 0,
          ),
          hintText: '__',
          hintStyle: TextStyle(
            color: ConstColors.grayColor.withOpacity(0.3),
          ),
          filled: true,
          fillColor: ConstColors.grayColor.withOpacity(0.05),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: ConstColors.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: ConstColors.grayColor.withOpacity(0.3),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: ConstColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
