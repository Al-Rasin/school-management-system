import 'package:fems/app/utils/appcolors.dart';
import 'package:fems/app/utils/appsizes.dart';
import 'package:fems/app/utils/textstyles.dart';
import 'package:fems/app/widgets/custom_text_field.dart';
import 'package:fems/app/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/png/login_bg.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 23,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log in to your account',
                  style: AppTextStyles.headlineText,
                ),
                const SizedBox(height: AppSize.size10),
                Text(
                  'Enter your valid username and password to continue.',
                  style: AppTextStyles.mediumText,
                ),
                const SizedBox(height: AppSize.size30),
                CustomTextField(
                  hint: 'UserName',
                  textEditingController: controller.usernameController,
                  leading: SvgPicture.asset('assets/images/svg/username.svg'),
                ),
                const SizedBox(height: AppSize.size15),
                CustomTextField(
                  hint: 'Password',
                  textEditingController: controller.passwordController,
                  leading: SvgPicture.asset('assets/images/svg/lock.svg'),
                  trailing: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/images/svg/hide_password.svg'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.size20,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: AppColors.primary,
                    ),
                    Text(
                      'Remeber Me',
                      style: AppTextStyles.small12SubText,
                    ),
                    const Spacer(),
                    Text(
                      'Forgot your\nUsername or Password?',
                      style: AppTextStyles.redSmall12Text,
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                const SizedBox(height: 37),
                PrimaryButton(
                    text: 'Log In',
                    onpressed: () {
                      String username = controller.usernameController.text;
                      String password = controller.passwordController.text;
                      print('Username: $username, Password: $password');
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
