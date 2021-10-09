import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/1.0_textfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class SignUpWidget extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Form(
          key: _globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextField(
                cLabelText: 'First Name',
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please first name';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              CustomTextField(
                cLabelText: 'Last Name',
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please last name';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              CustomTextField(
                cLabelText: 'Email',
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please email Id';
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(value)) {
                    return 'Please a valid Email';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              CustomTextField(
                keyboardtype: TextInputType.number,
                cLabelText: 'Mobile',
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please mobile';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              CustomTextField(
                keyboardtype: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please pincode';
                  }
                  return null;
                },
                cLabelText: 'Pincode',
                onSaved: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: CElevatedButton(
                    buttonLabel: 'Next',
                    onPressed: () {
                      if (validateAndSave()) {
                        print('success');
                      } else {
                        print('failure');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Form Incomplete'),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = _globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
