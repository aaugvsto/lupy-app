import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  Color? color;
  IconData? icon;
  String? title;

  CustomButtonWidget({super.key, this.color, this.title, this.icon});

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.color ?? Colors.blue,
          borderRadius: const BorderRadius.all(Radius.circular(24)),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon ?? Icons.pets_outlined,
              size: 64,
              color: Colors.white,
            ),
            Center(
              child: Text(
                widget.title ?? 'Title',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
