import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  static const radius = 20.0;
  final double width;
  final double height;
  final String hint;

  const InputField({
    super.key,
    this.width = 200,
    this.height = 100,
    this.hint = '',
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.deepPurple,
              fontStyle: FontStyle.italic,
            ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(InputField.radius),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          hintText: widget.hint,
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
