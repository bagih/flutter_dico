import 'package:flutter/material.dart';
import 'package:flutter_dico/model/tourism_place.dart';

// class Codelabsatu extends StatelessWidget {
//   const Codelabsatu({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Wisata alam",
//       theme: ThemeData(),
//       home: CodelabSatuBody(),
//     );
//   }
// }

class Codelabsatu extends StatelessWidget {
  // const CodelabSatu({Key? key}) : super(key: key);
  final TourismPlace tourismPlace;
  Codelabsatu({required this.tourismPlace});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebPage(tourismPlace);
      } else {
        return DetailMobilePage(tourismPlace);
      }
    });
  }
}

class DetailMobilePage extends StatelessWidget {
  // const DetailMobilePage({ Key? key }) : super(key: key);
  TourismPlace tourismPlace;
  DetailMobilePage(this.tourismPlace);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Stack(children: [
                  Image.asset(tourismPlace.imageAsset),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(1, 0),
                          )
                        ]),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FavoriteButton(),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  tourismPlace.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _tileIcon(Icons.calendar_today, tourismPlace.openDays),
                    _tileIcon(
                        Icons.watch_later_outlined, tourismPlace.openTime),
                    _tileIcon(Icons.monetization_on_rounded,
                        tourismPlace.ticketPrice),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  tourismPlace.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
                ),
              ),
              // Image.network(
              //     'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: tourismPlace.imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(url),
                      ),
                    );
                    // Padding(
                    //   padding: const EdgeInsets.all(4.0),
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(4),
                    //     child: Image.network(
                    //         'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(4.0),
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(4),
                    //     child: Image.network(
                    //         'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                    //   ),
                    // );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  // const DetailWebPage({Key? key}) : super(key: key);
  TourismPlace tourismPlace;
  DetailWebPage(this.tourismPlace);

  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wisata Bandung',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(tourismPlace.imageAsset),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 150,
                            padding: EdgeInsets.only(bottom: 16),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: tourismPlace.imageUrls.map((imageUrl) {
                                return Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(imageUrl),
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                        child: Card(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              child: Text(
                                tourismPlace.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30, fontFamily: 'Staatliches'),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      tourismPlace.openDays,
                                      style: informationTextStyle,
                                    )
                                  ],
                                ),
                                FavoriteButton(),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.access_time),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  tourismPlace.openTime,
                                  style: informationTextStyle,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(Icons.monetization_on),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  tourismPlace.ticketPrice,
                                  style: informationTextStyle,
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                tourismPlace.description,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Oxygen'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _tileIcon(IconData iconData, String text) {
  return Column(
    children: [
      Icon(iconData),
      SizedBox(
        height: 8,
      ),
      Text(text, style: TextStyle(fontFamily: 'Oxygen'))
    ],
  );
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
