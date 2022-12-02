class FavouritePokemon {
  int id;
  String link;

  FavouritePokemon(this.id, this.link);

  Map<String, dynamic> toJson() => {
        'id': id,
        'link': link,
      };
}
