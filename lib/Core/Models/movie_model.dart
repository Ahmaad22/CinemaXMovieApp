

  import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0,adapterName: "WishListAdapter")

class MovieModel extends HiveObject{
    bool isFavorite;

  @HiveField(0)
  final String name;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final dynamic rate;
  final dynamic id;

  final dynamic overview;
  final dynamic date;
  @override
  final dynamic key;


  MovieModel(


      {
        this.isFavorite=false,
     this.id,
    this.key,
         this.name="",
       this.overview,
       this.image="",
       this.rate=0.0,
       this.date});
}
