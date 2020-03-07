import 'package:fimber/fimber_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Fimber.d('home.dart, HomePage, build');
    var markers = <Marker>[
      Marker(
        width: 60.0,
        height: 60.0,
        point: LatLng(25.036319, 121.564325),
        builder: (ctx) =>
            Image.asset('assets/icon/icon_presidential_palace.png'),
      ),
      Marker(
        width: 60.0,
        height: 60.0,
        point: LatLng(24.831521, 121.187375),
        builder: (ctx) => Image.asset('assets/icon/icon_villain_nation.png'),
      ),
      Marker(
        width: 60.0,
        height: 60.0,
        point: LatLng(22.997606, 120.202527),
        builder: (ctx) => Image.asset('assets/icon/icon_chihkan_tower.png'),
      ),
      Marker(
        width: 60.0,
        height: 60.0,
        point: LatLng(24.138204, 120.675479),
        builder: (ctx) =>
            Image.asset('assets/icon/icon_chunshuitang_founding_store.png'),
      ),
      Marker(
        width: 60.0,
        height: 60.0,
        point: LatLng(23.861093, 120.915877),
        builder: (ctx) => Image.asset('assets/icon/icon_sun_moon_lake.png'),
      ),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(23.861093, 120.915877),
          zoom: 8.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
            tileProvider: NetworkTileProvider(),
          ),
          MarkerLayerOptions(markers: markers)
        ],
      ),
    );
  }
}
