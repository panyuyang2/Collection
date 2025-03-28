import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Container(
            width: 50,
            height: 40,
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              '<',
              style: TextStyle(
                fontSize: 40
              ),
            ),
          ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 245, 245, 245),
        child: const MyForm(),
      )
    );
  }
}

class MyForm extends StatefulWidget{
  const MyForm({super.key});
  @override
  MyFormState createState() => MyFormState();
}
class MyFormState extends State{
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  String username="admin";
  int password=123456;
  login(){
    var loginForm = loginKey.currentState;
    if(loginForm!.validate()){
      loginForm.save();
      Navigator.pushNamed(context, 'main');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: '请输入用户名',
              icon: Icon(Icons.person),
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return '用户名不能为空';
              }
              return null;
            },
            onSaved: (value){
              username = value!;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: '请输入密码',
              icon: Icon(Icons.person),
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return '密码不能为空';
              }
              return value.length<6?'密码长度错误，应该不小于6位':null;
            },
            onSaved: (value){
              password = value as int;
            },
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              login();
            },
            child: const Text(
              '登录',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}