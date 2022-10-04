class SimpleRecipe{
    late String dishImage;
    late String title;
    late String duration;
    late String source;
    late List<String> information;

    SimpleRecipe({
        required this.dishImage,
        required this.title,
        required this.duration,
        required this.source,
        required this.information,
    });

    SimpleRecipe.fromJSON(Map<String, dynamic> json) {
        dishImage = json['dishImage'];
        title = json['title'];
        duration = json['duration'];
        source = json['source'];
        information = json['information'].cast<String>();
    }
}