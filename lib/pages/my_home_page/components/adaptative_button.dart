import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String? label;
  final Function()? onPressed;

  const AdaptativeButton({super.key, 
    this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            color: Theme.of(context).primaryColor,
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(label.toString()),
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
            ),
            onPressed: onPressed,
            child: Text(label.toString()),
          );
  }
}
