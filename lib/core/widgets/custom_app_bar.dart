import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget
{
  @override final Size preferredSize =  Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AppAssets.logo,height: 32,),
          SizedBox(width: 8,),
          Text('TripMacha AI',style: TextStyle(color: AppColors.primary),)
        ],
      ),
    );
  }

}