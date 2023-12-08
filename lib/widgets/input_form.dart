import 'package:flutter/material.dart';
import 'package:navigator_2_base/widgets/input_field.dart';

class InputForm extends StatefulWidget {
  // final GlobalKey<FormState> globalKey;
  final TextEditingController nameController,
      fatherNameController,
      rollNoController,
      cnicController,
      phoneNoController;
  const InputForm({
    super.key,
    // required this.globalKey,
    required this.nameController,
    required this.cnicController,
    required this.fatherNameController,
    required this.phoneNoController,
    required this.rollNoController,
  });

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  static const inputFieldWidthPercent = 0.25;
  static const inputFieldHeightPercent = 0.08;
  static const hintName = 'Enter your Name';
  static const hintFatherName = 'Enter your Father Name';
  static const hintRollNo = 'Enter your Roll No';
  static const hintCNIC = 'Enter your CNIC';
  static const hintPhoneNo = 'Enter your Phone No';
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);

    // Setting input field width and height
    double inputFieldWidth = width * inputFieldWidthPercent;
    double inputFieldHeight = height * inputFieldHeightPercent;
    return Form(
      // key: widget.globalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InputField(
            width: inputFieldWidth,
            height: inputFieldHeight,
            hint: hintName,
          ),
          InputField(
            width: inputFieldWidth,
            height: inputFieldHeight,
            hint: hintFatherName,            
          ),
          InputField(
            width: inputFieldWidth,
            height: inputFieldHeight,
            hint: hintRollNo,            
          ),
          InputField(
            width: inputFieldWidth,
            height: inputFieldHeight,
            hint: hintCNIC,            
          ),
          InputField(
            width: inputFieldWidth,
            height: inputFieldHeight,
            hint: hintPhoneNo,            
          ),
        ],
      ),
    );
  }
}
