import 'package:fems/app/utils/appcolors.dart';
import 'package:fems/app/utils/textstyles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.leading,
    required this.hint,
    required this.textEditingController,
    this.keyBoardType = TextInputType.name,
    this.maxLine = 1,
    this.obsecureText = false,
    this.trailing = const <Widget>[],
  });

  final Widget? leading;
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyBoardType;
  final int maxLine;
  final bool obsecureText;
  final List<Widget> trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 23,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          30,
        ),
        color: AppColors.whiteText,
        border: Border.all(
          color: const Color.fromARGB(128, 178, 175, 175),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: leading,
                hintText: hint,
                hintStyle: AppTextStyles.small12SubText,
              ),
            ),
          ),
          ...trailing
        ],
      ),
    );
  }
}
