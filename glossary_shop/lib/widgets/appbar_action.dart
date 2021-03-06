import 'package:flutter/material.dart';
import 'package:glossary_shop/utils/colors.dart';

class CustomAppBarAction extends StatelessWidget {
  final Function action;
  final IconData icon;
  final int quantity;

  CustomAppBarAction(this.action, this.icon, {required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: 50,
        height: 40,
        child: FlatButton(
          onPressed: action(),
          padding: EdgeInsets.zero,
          color: AppColors.WHITE,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.9),
          ),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Icon(
                icon,
                size: 21,
                color: AppColors.GREEN,
              ),
              Visibility(
                visible: quantity != null,
                child: Positioned(
                  top: -5,
                  right: -10,
                  child: Container(
                    width: 16,
                    height: 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.DARK,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      quantity.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.WHITE,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
