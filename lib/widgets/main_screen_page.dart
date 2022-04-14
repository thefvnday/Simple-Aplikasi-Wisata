import 'package:aplikasi_wisata/data/tourist_place.dart';
import 'package:aplikasi_wisata/widgets/detail_screen_page.dart';
import 'package:flutter/material.dart';

class MainScreenPage extends StatefulWidget {
  MainScreenPage({Key? key}) : super(key: key);

  @override
  _MainScreenPageState createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata App'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreenPage(place: place,)));
          },
          child: Card(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset)),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(place.location),
                        ]),
                  ),
                ),
              ])),
        );
      },
      itemCount: tourismPlaceList.length,
      ),
    );
  }
}
