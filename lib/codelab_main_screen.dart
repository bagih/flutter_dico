import 'package:flutter/material.dart';
import 'package:flutter_dico/codelab1.dart';
import 'package:flutter_dico/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata bandung'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return TourismPlaceGrid(4);
          } else {
            return TourismPlaceGrid(6);
          }
        },
      ),
    );
  }
}

class TourismPlaceList extends StatelessWidget {
  const TourismPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace tourismPlace = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Codelabsatu(
                tourismPlace: tourismPlace,
              );
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(tourismPlace.imageAsset),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tourismPlace.name,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(tourismPlace.location),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}

class TourismPlaceGrid extends StatelessWidget {
  // const TourismPlaceGrid({Key? key}) : super(key: key);

  final int gridCount;
  TourismPlaceGrid(this.gridCount);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GridView.count(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: gridCount,
        children: tourismPlaceList.map((place) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Codelabsatu(tourismPlace: place);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      place.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      place.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Text(place.location),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
