import 'package:flutter/material.dart';
import 'package:flutter_grid/detail_page.dart';
import 'package:flutter_grid/places_data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chennai Places',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title:Center(child: Text('Chennai Famous Places')),
        ),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: EdgeInsets.all(8.0),
      childAspectRatio: 1 / 1.2,
      children: gridItems(),);
  }
  List<Widget>gridItems(){
    return Places().getPlaces().map<Widget>((place)=> _GridItem(place: place)).toList();
  }
}
class _GridItem extends StatelessWidget {

 final place;

  const _GridItem({ Key? key, this.place }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 13,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child:InkWell(
        child:GridTile(
          footer: GridTileBar(backgroundColor: Colors.black45,
          title: Text(place.title),
          subtitle: Text(place.subtitle),
          ),
          child:Ink.image(
            image: AssetImage(place.image),
            fit: BoxFit.cover,
            ),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
        },
      ),
      
    );
  }
}
