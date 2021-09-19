import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  bool _isLogin = false;
  late String _name, _nameCheck;
  late String _password, _passwordCheck;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text('Todo list'),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Login or Register'),
                /*TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.indigo),
                      hintText: 'Search...'
                ),),
                TextField(),*/
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Enter yours: '),
                              content: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.phone_android,
                                          color: Colors.indigo),
                                      hintText: 'name',
                                      //labelText: '+380',
                                    ),
                                    onChanged: (String value) {
                                      _nameCheck = value;
                                    },
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.password,
                                            color: Colors.indigo),
                                        hintText: 'Password'),
                                    onChanged: (String value) {
                                      _passwordCheck = value;
                                    },
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      if (_passwordCheck==_password&&_nameCheck==_name) {
                                        Navigator.pushReplacementNamed(context, '/todo');
                                      } else {
                                        Navigator.pushReplacementNamed(context, '/');
                                      }
                                      _nameCheck='';_passwordCheck='';
                                    },
                                    child: Text('Login'))
                              ],
                            );
                          });
                    },
                    child: Text('Login')),



                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Enter yours: '),
                              content: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.phone_android,
                                          color: Colors.indigo),
                                      hintText: 'phone',
                                      //labelText: '+380',
                                    ),
                                    onChanged: (String value) {
                                      _nameCheck = value;
                                    },
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.password,
                                            color: Colors.indigo),
                                        hintText: 'Password'),
                                    onChanged: (String value) {
                                      _passwordCheck = value;
                                    },
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      if (_nameCheck.length>2&&_nameCheck.length<20) {
                                        _name=_nameCheck;
                                        _password=_passwordCheck;

                                      }
                                       _nameCheck='';_passwordCheck='';
                                        Navigator.pop(context);

                                    },
                                    child: Text('Register'))
                              ],
                            );
                          });
                    },
                    child: Text('Register')),

              ],
            ),
          ],
        ));
  }
}
