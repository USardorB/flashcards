enum Languages {
  english,
  russian,
  polish;

  @override
  String toString() => name[0].toUpperCase() + name.substring(1);
}
