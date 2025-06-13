import 'package:xml/xml.dart';

class VelogRssItem {
  final String title;
  final String link;
  final String pubDate;
  final String description;
  VelogRssItem({required this.title, required this.link, required this
      .pubDate, required this.description});
}

List<VelogRssItem> parseVelogRss(String xmlData) {
  final document = XmlDocument.parse(xmlData);
  List<VelogRssItem> items = [];
  for (var item in document.findAllElements('item')){
    items.add(VelogRssItem(
      title: item.findElements('title').first.text,
      link: item.findElements('link').first.text,
      pubDate: item.findElements('pubDate').first.text,
      description: item.findElements('description').first.text,
    ));
  }
  return items;
}