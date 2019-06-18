final channelList = {
  "Africa Intelligence": Channel(
      title: "Africa Intelligence",
      link: "https://www.africaintelligence.com/",
      linkRss:
          "http://feedhjvkvkbkkhvbbvks.feedburner.com/AfricaEnergyIntelligence",
//      linkRss: "http://feeds.feedburner.com/AfricaEnergyIntelligence",
      iconUrl: 'https://www.africaintelligence.com/img/logo-site.png',
      favorite: true),
  "AllAfrica.com": Channel(
      title: "AllAfrica.com",
      link: "https://allafrica.com",
      linkRss:
          "https://allafrica.com/tools/headlines/rdf/business/headlines.rdf",
      iconUrl: 'https://allafrica.com/static/images/structure/aa-logo.png',
      favorite: true),
  "BBC World News": Channel(
      title: "BBC World News",
      link: "bbc.co.uk",
      linkRss: "http://feeds.bbci.co.uk/news/world/rss.xml",
      iconUrl: 'https://news.bbcimg.co.uk/nol/shared/img/bbc_news_120x60.gif',
      favorite: false),
  "Jeune Afrique": Channel(
      title: "Jeune Afrique",
      link: "http://www.jeuneafrique.com",
      linkRss: "http://www.jeuneafrique.com/feed/",
      iconUrl:
          'https://www.jeuneafrique.com/wp-content/themes/ja-3.0.x/assets/img/supplement-luxe/logo.png',
      favorite: true),
  "BBC technology news": Channel(
      title: "BBC technology news",
      link: "bbc.co.uk",
      linkRss: 'http://feeds.bbci.co.uk/news/technology/rss.xml',
      iconUrl: 'https://news.bbcimg.co.uk/nol/shared/img/bbc_news_120x60.gif',
      favorite: false),
  "Africanews": Channel(
      title: "Africanews",
      link: "http://www.africanews.com/",
      linkRss: "http://www.africanews.com/feed/rss",
      iconUrl: 'https://allafrica.com/static/images/structure/aa-logo.png',
      favorite: false),
};

class Channel {
  int id;
  final String title;
  final String link;
  final String linkRss;
  final String iconUrl;
  final String lastBuildDate;
  final String language;
  bool favorite;

  Channel(
      {this.id,
      this.title,
      this.link,
      this.lastBuildDate,
      this.language,
      this.linkRss,
      this.iconUrl,
      this.favorite});

  factory Channel.fromMap(Map<String, dynamic> data) {
    return Channel(
        id: data['id'],
        title: data['title'],
        link: data['link'],
        lastBuildDate: data['last_build_date'],
        language: data['language'],
        linkRss: data['link_rss'],
        iconUrl: data['icon_url'],
        favorite: data['favorite'] == 1);
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'link': link,
      'last_build_date': lastBuildDate,
      'language': language,
      'link_rss': linkRss,
      'icon_url': iconUrl,
      'favorite': favorite,
    };
  }

  @override
  String toString() {
    return 'Channel{id: $id, favorite: $favorite}';
  }
}