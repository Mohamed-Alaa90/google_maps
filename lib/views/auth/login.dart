import 'package:flutter/material.dart';
import 'package:google_maps/core/widget/custom_button.dart';
import 'package:google_maps/core/widget/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final TextEditingController phoneContr = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: w * 0.05,

            vertical: h * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.05),
              _buildHead(context, w, h),
              SizedBox(height: h * 0.05),
              _buildForm(w, h),
              SizedBox(height: h * 0.05),
              _buildButton(w, h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHead(BuildContext context, double w, double h) {
    return Column(
      children: [
        Text(
          'Welcome In Google Map',
          style: TextStyle(
            fontSize: w * 0.06,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildForm(double w, double h) {
    return CustomTextField(
      hintText: "Phone",
      textEditingController: phoneContr,
      prefix: "+20",
      keyboardType: TextInputType.number,
    );
  }

  Widget _buildButton(double w, double h) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: w * 0.8,
        height: h * 0.07,
        child: CustomButton(
          label: "Login",
          onTap: () async {
            await Future.delayed(const Duration(seconds: 2));
          },
        ),
      ),
    );
  }
}
