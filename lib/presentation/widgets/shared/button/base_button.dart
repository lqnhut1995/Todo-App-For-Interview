import 'package:flutter/material.dart';

class ITextButton extends StatelessWidget {
  ITextButton({
    this.text,
    this.title,
    this.color,
    this.shape,
    this.style,
    this.onPressed,
    this.height = 45.0,
  });

  // Props
  final Widget? text;
  final Color? color;
  final String? title;
  final double height;
  final TextStyle? style;
  final OutlinedBorder? shape;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.fromHeight(height),
      ).copyWith(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return Theme.of(context)
                  .buttonTheme
                  .colorScheme
                  ?.secondaryContainer;
            }
            return color ?? Theme.of(context).primaryColor;
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (states) => shape,
        ),
      ),
      child: text ??
          Text(
            title ?? '',
            style: Theme.of(context)
                .primaryTextTheme
                .button!
                .copyWith(fontSize: 16)
                .merge(style),
          ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
