import 'package:flutter/material.dart';
import 'package:flutter_intro/core/extensions/string_extension.dart';

class FormPracticePage extends StatefulWidget {
  const FormPracticePage({Key? key}) : super(key: key);

  @override
  State<FormPracticePage> createState() => _FormPracticePageState();
}

class _FormPracticePageState extends State<FormPracticePage> {
  final _formKey = GlobalKey<FormState>();
  final emailNode = FocusNode();
  final passwordNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            focusNode: emailNode,
            onFieldSubmitted: (_) =>
                FocusScope.of(context).requestFocus(passwordNode),
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              label: Text('email'),
            ),
            validator: (value) {
              if (value == null || !value.isValidEmail) {
                FocusScope.of(context).requestFocus(emailNode);
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          TextFormField(
            focusNode: passwordNode,
            obscureText: true,
            decoration: const InputDecoration(
              label: Text('password'),
            ),
            validator: (value) {
              if (value == null || value.length < 6) {
                FocusScope.of(context).requestFocus(passwordNode);
                return 'Please enter a valid password';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                FocusScope.of(context).unfocus();
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Form Valid'),
                      content:
                          const Text('You have filled in the form correctly'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Close'),
                        )
                      ],
                    );
                  },
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text(
                    'Invalid form',
                  )),
                );
              }
            },
            child: const Text('Validate'),
          ),
        ],
      ),
    );
  }
}
