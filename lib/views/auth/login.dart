import 'package:flutter/material.dart';
import 'package:google_maps/core/constant/my_colors.dart';
import 'package:google_maps/core/widget/custom_button.dart';
import 'package:google_maps/core/widget/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneContr = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneContr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: w * 0.06,
            vertical: h * 0.08,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: h * 0.05),

                /// Logo or Icon
                Icon(
                  Icons.lock_outline,
                  size: w * 0.25,
                  color: MyColors.kGreen,
                ),
                SizedBox(height: h * 0.03),

                /// Title
                Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    fontSize: w * 0.07,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: h * 0.01),

                /// Subtitle
                Text(
                  'ادخل رقم الهاتف للمتابعة',
                  style: TextStyle(
                    fontSize: w * 0.045,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: h * 0.06),

                /// Phone Field
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // مهم
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.03,
                            vertical: h * 0.018,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: MyColors.kGreen,
                                width: 1.2,
                              ),
                            ),
                          ),
                          child: Text(
                            "+20",
                            style: TextStyle(
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.bold,
                              color: MyColors.kGreen,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25), 
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                        child: CustomTextField(
                          hintText: "رقم الهاتف",
                          textEditingController: _phoneContr,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "من فضلك ادخل رقم الهاتف";
                            }
                            if (!RegExp(
                              r'^[0-9]{10,11}$',
                            ).hasMatch(value.trim())) {
                              return "رقم الهاتف غير صالح";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: h * 0.05),

                /// Login Button
                SizedBox(
                  width: w * 0.8,
                  height: h * 0.07,
                  child: CustomButton(
                    color: MyColors.kGreen,
                    label: "تسجيل الدخول",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Call API or Navigate
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
