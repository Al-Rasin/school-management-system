import 'package:fems/app/utils/appcolors.dart';
import 'package:fems/app/utils/appsizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.selectedIcon,
    required this.unselecteIcon,
    required this.text,
  });

  final VoidCallback onTap;
  final bool isSelected;
  final String selectedIcon;
  final String unselecteIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            isSelected ? selectedIcon : unselecteIcon,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.primary : AppColors.textColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            height: AppSize.size5,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: isSelected ? AppColors.primary : AppColors.textColor,
            ),
          )
        ],
      ),
    );
  }
}
