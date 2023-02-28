import 'package:flutter/material.dart';

class customFormField extends StatefulWidget {
  const customFormField({
    super.key,
    required this.fieldName,
    required this.fieldIcon,
    required this.fieldType,
  });

  final String fieldName;
  final Icon fieldIcon;
  final TextInputType fieldType;
  @override
  State<customFormField> createState() => _customFormFieldState();
}

class _customFormFieldState extends State<customFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            keyboardType: widget.fieldType,
            decoration: InputDecoration(
                label: Text(widget.fieldName),
                border: InputBorder.none,
                prefixIcon: widget.fieldIcon),
          ),
        ),
      ],
    );
  }
}
