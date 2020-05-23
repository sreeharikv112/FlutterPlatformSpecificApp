import 'package:flutter/material.dart';
import 'package:flutter_platform_specific_app/utils/constants.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool _currentSwitchValue = false;
  String switchText = "Do not ";
  //globa key for form validation
  var _formKey = GlobalKey<FormState>();
  TextEditingController usernameCtrlr = TextEditingController();
  TextEditingController passwordCtrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.all(minimumPadding * 2),
            child: ListView(
              children: <Widget>[
                getAssetImage(),
                Padding(
                  padding: const EdgeInsets.only(
                      top: padding_50, left: padding_20, right: padding_20),
                  child: PlatformTextField(
                    keyboardType: TextInputType.text,
                    controller: usernameCtrlr,
                    onChanged: (value) => {
                      if(value.isEmpty){
                        showAlert('Please enter valid username')
                      }
                    },
                    android: (_) => MaterialTextFieldData(
                      decoration: InputDecoration(labelText: 'User name'),
                    ),
                    ios: (_) => CupertinoTextFieldData(
                      placeholder: 'User name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_20),
                  child: PlatformTextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) => {
                      if(value.isEmpty){
                        showAlert('Please enter valid password')
                      }
                    },
                    android: (_) => MaterialTextFieldData(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                    ios: (_) => CupertinoTextFieldData(
                      placeholder: 'Password',
                      obscureText: true,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(padding_20),
                      child: PlatformSwitch(
                        value: _currentSwitchValue,
                        onChanged: (value) {
                          setState(() {
                            _currentSwitchValue = value;
                            if (value) {
                              switchText = "Yes,";
                            } else {
                              switchText = "No, Don't";
                            }
                          });
                        },
                      ),
                    ),
                    Text(
                      '$switchText remember me ',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(padding_20),
                    child: PlatformButton(
                      onPressed: () {},
                      child: Text('Login'),
                      android: (_) => MaterialRaisedButtonData(),
                      ios: (_) => CupertinoButtonData(),
                    )),
              ],
            )));
  }

  Widget getAssetImage() {
    AssetImage assetImage = AssetImage('images/icon_iron_man.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      padding: EdgeInsets.only(top: padding_20, bottom: padding_20 * 2),
      child: image,
      alignment: Alignment.center,
    );
  }

  void showAlert(String message){
  showPlatformDialog(
  context: context,
  builder: (_) => PlatformAlertDialog(
    title: Text('Alert'),
    content: Text(message),
    actions: <Widget>[
      PlatformDialogAction(
        child: Text("Ok"),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    ],
  ),
);
  }
}
