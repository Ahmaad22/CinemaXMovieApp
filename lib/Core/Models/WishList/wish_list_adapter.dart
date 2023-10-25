import 'package:cinemax_movie_app/Core/Models/movie_model.dart';
import 'package:hive/hive.dart';

class WishListModelAdapter extends TypeAdapter<MovieModel> {
  @override
  final int typeId = 0;

  @override
  MovieModel read(BinaryReader reader) {
    final name = reader.read();
    final image = reader.read();
    final rate = reader.read();

    return MovieModel(name: name, image: image, rate: rate);
  }

  @override
  void write(BinaryWriter writer, MovieModel obj) {
    writer.write(obj.name);
    writer.write(obj.image);
    writer.write(obj.rate);
  }
}
