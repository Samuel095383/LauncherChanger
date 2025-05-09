// app_dropdown.dart
/*
import 'package:device_installed_apps/app_info.dart';
import 'package:device_installed_apps/device_installed_apps_method_channel.dart';
import 'package:flutter/material.dart';
import 'package:device_installed_apps/device_installed_apps.dart';

class AppDropdown extends StatefulWidget {
  @override
  _AppDropdownState createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  List<AppInfo> _apps = [];
  AppInfo? _selectedApp;

  @override
  void initState() {
    super.initState();
    _loadInstalledApps();
  }

  Future<void> _loadInstalledApps() async {
    try {
      List<AppInfo> apps = await DeviceInstalledApps.getApps(
        '', // Puoi filtrare per prefisso del bundle se necessario
        false, // Include apps di sistema?
        true, // Include icone?
        [], // Puoi aggiungere permessi specifici se necessario
        true, // Verifica se le app hanno tutti i permessi necessari
      );
      setState(() {
        _apps = apps;
        if (_apps.isNotEmpty) {
          _selectedApp = _apps[0]; // Imposta la prima app come selezionata per default
        }
      });
    } catch (e) {
      print('Errore nel caricamento delle app: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seleziona un'app"),
      ),
      body: Center(
        child: _apps.isEmpty
            ? CircularProgressIndicator() // Mostra un caricamento mentre si caricano le app
            : DropdownButton<AppInfo>(
          value: _selectedApp,
          onChanged: (AppInfo? newValue) {
            setState(() {
              _selectedApp = newValue;
            });
          },
          items: _apps.map<DropdownMenuItem<AppInfo>>((AppInfo app) {
            return DropdownMenuItem<AppInfo>(
              value: app,
              child: Row(
                children: [
                  if (app.icon != null) // Mostra l'icona dell'app, se disponibile
                    Image.memory(
                      app.icon!, // Mostra l'icona come immagine
                      width: 24,
                      height: 24,
                    ),
                  SizedBox(width: 8),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
*/