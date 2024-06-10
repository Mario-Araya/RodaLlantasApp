// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:device_info_plus/device_info_plus.dart';

class Dispositivo extends StatefulWidget {
  const Dispositivo({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _DispositivoState createState() => _DispositivoState();
}

class _DispositivoState extends State<Dispositivo> {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    var deviceData = <String, dynamic>{};

    try {
      if (kIsWeb) {
        deviceData = _readWebBrowserInfo(await deviceInfoPlugin.webBrowserInfo);
      } else {
        if (Platform.isAndroid) {
          deviceData =
              _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
        } else if (Platform.isIOS) {
          deviceData = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
        }
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': ' Sucedió un fallo al identificar el dispositivo'
      };
    }

    if (!mounted) return;

    setState(() {
      _deviceData = deviceData;
    });
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'Marca:': build.brand,
      'Dispositivo:': build.device,
      'Hardware:': build.hardware,
      'Id:': build.id,
      'Fabricante:': build.manufacturer,
      'Modelo:': build.model,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'Nombre:': data.name,
      'Nombre del sistema:': data.systemName,
      'Modelo:': data.model,
      'Modelo localizado:': data.localizedModel,
    };
  }

  Map<String, dynamic> _readWebBrowserInfo(WebBrowserInfo data) {
    return <String, dynamic>{
      'Nombre de navegador:': describeEnum(data.browserName),
      'Nombre codigo de aplicación:': data.appCodeName,
      'Plataforma:': data.platform,
      'Proveedor:': data.vendor,
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define el color de fondo de la aplicación
        scaffoldBackgroundColor: Color(0xFF1B1B1B), // Cambia a tu color deseado

        // Define el tema del AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF808080), // Cambia a tu color deseado
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            kIsWeb
                ? 'Información de navegador web'
                : Platform.isAndroid
                    ? 'Información de dispositivo android'
                    : Platform.isIOS
                        ? 'Información de dispositivo iOS'
                        : '',
          ),
        ),
        body: ListView(
          children: _deviceData.keys.map(
            (String property) {
              return Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      property,
                      style: const TextStyle(
                        color: Colors.white, // Cambia a tu color deseado
                        fontSize: 18, // Cambia al tamaño de fuente deseado
                        fontWeight: FontWeight
                            .bold, // Opcional: cambia el peso de la fuente
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    child: Text(
                      style: const TextStyle(
                        color: Colors.white, // Cambia a tu color deseado
                        fontSize: 18, // Cambia al tamaño de fuente deseado
                        fontWeight: FontWeight
                            .bold, // Opcional: cambia el peso de la fuente
                      ),
                      '${_deviceData[property]}',
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
