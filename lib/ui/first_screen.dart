import 'package:flutter/material.dart';
import 'package:flutter_platform_specific_app/utils/constants.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'dashboard.dart';

///Login screen
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool _currentSwitchValue = false;
  String switchText = "Do not ";
  String _userNameEntered = "";
  String _passwordEntered = "";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //image logo
        getAssetImage(),

        //User name
        Padding(
          padding: const EdgeInsets.only(
              top: padding_50, left: padding_20, right: padding_20),
          child: PlatformTextField(
            keyboardType: TextInputType.text,
            onChanged: (value) => {
              _userNameEntered = value,
              if(value.isEmpty) 
              {showAlert(username_error)}
            },
            android: (_) => MaterialTextFieldData(
              decoration: InputDecoration(labelText: username),
            ),
            ios: (_) => CupertinoTextFieldData(
              placeholder: username,
            ),
          ),
        ),

        //password
        Padding(
          padding: const EdgeInsets.all(padding_20),
          child: PlatformTextField(
            keyboardType: TextInputType.text,
            onChanged: (value) => {
              _passwordEntered = value,
              if(value.isEmpty) 
              {showAlert(password_error)}
            },
            android: (_) => MaterialTextFieldData(
              decoration: InputDecoration(labelText: password),
              obscureText: true,
            ),
            ios: (_) => CupertinoTextFieldData(
              placeholder: password,
              obscureText: true,
            ),
          ),
        ),

        //Switch
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

        //Button
        Padding(
            padding: const EdgeInsets.all(padding_20),
            child: PlatformButton(
              onPressed: () {
                setState(() {
                  if (_userNameEntered.isEmpty || _passwordEntered.isEmpty) {
                    showAlert(un_pw_error);
                  } else {
                    moveToNextScreen(context);
                  }
                });
              },
              child: Text(login),
              android: (_) => MaterialRaisedButtonData(),
              ios: (_) => CupertinoButtonData(),
            )),
      ],
    );
  }

  ////Return image asset
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

  ////Shows alert message with provided text
  void showAlert(String message) {
    showPlatformDialog(
      context: context,
      builder: (_) => PlatformAlertDialog(
        title: Text(alert),
        content: Text(message),
        actions: <Widget>[
          PlatformDialogAction(
            child: Text(ok),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

////Routes to next screen
void moveToNextScreen(BuildContext context) {
  Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => DashboardScreen()),
  );
}
