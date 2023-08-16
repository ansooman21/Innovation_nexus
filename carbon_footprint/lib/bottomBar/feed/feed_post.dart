import 'package:flutter/material.dart';

class Article {
  final String title;
  final String content;

  Article(this.title, this.content);
}

class FeedPage extends StatelessWidget {
  final List<Article> articles = [
    Article("Getting Started with Flutter",
        "Flutter is a UI toolkit from Google for building natively compiled applications..."),
    Article("State Management in Flutter",
        "State management is a crucial aspect of building complex applications in Flutter..."),
    // Add more articles here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArticleListPage(articles),
    );
  }
}

class ArticleListPage extends StatelessWidget {
  final List<Article> articles;

  ArticleListPage(this.articles);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return ArticleCard(articles[index]);
        },
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  final Article article;

  ArticleCard(this.article);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailPage(article),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                article.content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ArticleDetailPage extends StatelessWidget {
  final Article article;

  ArticleDetailPage(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(article.content),
      ),
    );
  }
}
