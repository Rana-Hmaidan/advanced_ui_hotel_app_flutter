import 'package:flutter/material.dart';

class AppCustomIconButton extends StatelessWidget {
  const AppCustomIconButton({super.key, required this.icon, this.onTap});

  final Widget icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 4,
                  ),
                ],
              ),
            child: InkWell(
              onTap: onTap , 
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: icon,
              )
            ),
    );
  }
}