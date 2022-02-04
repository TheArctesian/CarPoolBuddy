import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:take2/provider/GoogleAuth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:take2/widget/accountPage.dart';
import 'firebase_options.dart';
import './widget/signUp_widget.dart' as SignUpWidget;
import './widget/accountPage.dart' as AccountPage;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'CarpoolBudy';

  get _onMapCreated => null;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleAuth(),
      child: MaterialApp(
        title: _title,
        theme: ThemeData(
            brightness: Brightness.dark, primaryColor: Colors.blueGrey),
        themeMode: ThemeMode.dark,
        home: const MyStatefulWidget(),
      ));
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  late GoogleMapController mapController;


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static final List<Widget> _widgetOptions = <Widget>[
    Container(
      child: const GoogleMap(
        initialCameraPosition: CameraPosition( 
          target: LatLng(22.3193, 114.1694), // Hong Kong
          zoom: 11.0,
        ),
      ),
    ),
    SignUpWidget.signUp(MyStatefulWidget),  
    AccountPage.accountPage(MyStatefulWidget),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade700,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
