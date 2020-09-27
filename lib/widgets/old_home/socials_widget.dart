import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {

  final void Function() onPressed;
  final IconData icon;

  const SocialIconButton({Key key, this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.transparent,
      disabledColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.grey[300],
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}