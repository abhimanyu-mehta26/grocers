import 'package:flutter/material.dart';
class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.endIcon = true,
    required this.onPress ,
    this.textColor,

  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(233, 175, 90, 0.5),
        ),
        child: Icon(icon),
      ),
      title: Text(title,
          style: TextStyle(
              fontSize: 19,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold)?.apply(color: textColor)
      ),
      trailing: endIcon? Container(
        width: 30, height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.transparent,
        ),
        child: const Icon(Icons.chevron_right),
      ): null,
    );
  }
}