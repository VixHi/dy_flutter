import 'package:flutter/material.dart';

class DYFormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.orange,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // child: DYTextfieldDemo(),
            DYRegisterForm(),
          ],

        ),
      ),
    );
  }
}



class DYRegisterForm extends StatefulWidget {
  @override
  _DYRegisterFormState createState() => _DYRegisterFormState();
}

class _DYRegisterFormState extends State<DYRegisterForm> {

  final registerFromKey = GlobalKey<FormState>();
  String userName, password;

  void _dyRegisterAction() {
    registerFromKey.currentState.save();
    registerFromKey.currentState.validate();
    print('username:${userName}, password:${password}');
  }

  String _userNameValidate(value) {
    if (value.isEmpty) {
      return 'userName is reguired';
    }
    return null;
  }

    String _passwordValidate(value) {
    if (value.isEmpty) {
      return 'password is reguired';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFromKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'UserName',
              // helperText: '',
            ),
            onSaved: (value) {
              userName = value;
            },
            validator: _userNameValidate,
            // autovalidate: true,
            autovalidateMode: AutovalidateMode.disabled,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              // helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: _passwordValidate,
            // autovalidate: true,
            // 第一次失败后开始验证
            autovalidateMode: AutovalidateMode.disabled,

          ),

          SizedBox(height: 32,),

          Container(
            width: double.infinity,
            color: Theme.of(context).accentColor,
            child: ElevatedButton(
              onPressed: _dyRegisterAction,
              child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 20),

            ),
          ),
          ),
        ],
      ),
    );
  }
}


class DYTextfieldDemo extends StatefulWidget {
  @override
  _DYTextfieldDemoState createState() => _DYTextfieldDemoState();
}

class _DYTextfieldDemoState extends State<DYTextfieldDemo> {
  final dyTextEditingController = TextEditingController();

  @override
  void dispose() {
    dyTextEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    dyTextEditingController.text = 'vix, hi';
    dyTextEditingController.addListener(() {
      print('input: ${dyTextEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (value) => {
      //   print('input: ${value}')
      // },
      controller: dyTextEditingController,

      onSubmitted: (value) => {print('submit: ${value}')},

      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        // labelText: 'Title',
        // hintText: 'Enter the post title',
        // errorBorder: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.yellow,
      ),
    );
  }
}

class DYThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
