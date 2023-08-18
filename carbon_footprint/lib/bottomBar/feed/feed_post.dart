import 'package:flutter/material.dart';

class Article {
  final String title;
  final String content;

  Article(this.title, this.content);
}

class FeedPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
        "Climate litigation more than doubles in five years, now a key tool in delivering climate justice",
        "The total number of climate change court cases has more than doubled since 2017 and is growing worldwide. These findings, published today by the UN Environment Programme (UNEP) and the Sabin Center for Climate Change Law at Columbia University, show that climate litigation is becoming an integral part of securing climate action and justice.\n\nThe report, Global Climate Litigation Report: 2023 Status Review, is based on a review of cases focused on climate change law, policy or science collected up to 31 December 2022 by the Sabin Center’s US and Global Climate Change Litigation Databases. It is published a day ahead of the first anniversary of the UN General Assembly’s declaration of access to a clean and healthy environment as a universal human right. \n\nClimate policies are far behind what is needed to keep global temperatures below the 1.5°C threshold, with extreme weather events and searing heat already baking our planet,” said Inger Andersen, Executive Director of UNEP. “People are increasingly turning to courts to combat the climate crisis, holding governments and the private sector accountable and making litigation a key mechanism for securing climate action and promoting climate justice.\n\nThe report provides an overview of key climate litigation cases from the past two years, including historic breakthroughs (see selected cases below). As climate litigation increases in frequency and volume, the body of legal precedent grows, forming an increasingly well-defined field of law. \n\nThe report provides an overview of key climate litigation cases from the past two years, including historic breakthroughs (see selected cases below). As climate litigation increases in frequency and volume, the body of legal precedent grows, forming an increasingly well-defined field of law.\n\nThe total number of climate change cases has more than doubled since a first report on the issue, from 884 in 2017 to 2,180 in 2022. While most cases have been brought in the US, climate litigation is taking root all over the world, with about 17 per cent of cases now being reported in developing countries, including Small Island Developing States. \n\nThese legal actions were brought in 65 bodies worldwide: in international, regional, and national courts, tribunals, quasi-judicial bodies, and other adjudicatory bodies, including special procedures of the UN and arbitration tribunals.\n\nThere is a distressingly growing gap between the level of greenhouse gas reductions the world needs to achieve in order to meet its temperature targets, and the actions that governments are actually taking to lower emissions. This inevitably will lead more people to resort to the courts. This report will be an invaluable resource for everyone who wants to achieve the best possible outcome in judicial forums, and to understand what is and is not possible there,” said Michael Gerrard, Sabin Center’s Faculty Director.\n\nThe report demonstrates how the voices of vulnerable groups are being heard globally: 34 cases have been brought by and on behalf of children and youth under 25 years old, including by girls as young as seven and nine years of age in Pakistan and India respectively, while in Switzerland, plaintiffs are making their case based on the disproportionate impact of climate change on senior women.\n\nNotable cases have challenged government decisions based on a project’s inconsistency with the goals of the Paris Agreement or a country’s net-zero commitments. Growing awareness of climate change in recent years has also spurred action against corporations - these include cases seeking to hold fossil fuel companies and other greenhouse gas emitters responsible for climate harm.\n\nAccording to the report, most ongoing climate litigation falls into one or more of six categories: 1) cases relying on human rights enshrined in international law and national constitutions; 2) challenges to domestic non-enforcement of climate-related laws and policies; 3) litigants seeking to keep fossil fuels in the ground; 4) advocates for greater climate disclosures and an end to greenwashing; 5) claims addressing corporate liability and responsibility for climate harms; and 6) claims addressing failures to adapt to the impacts of climate change.\n\nThe report demonstrates how courts are finding strong human rights linkages to climate change. This is leading to greater protections for the most vulnerable groups in society, as well as increased accountability, transparency and justice, compelling governments and corporations to pursue more ambitious climate change mitigation and adaptation goals.\n\nIn the future, the report predicts a rise in the number of cases dealing with climate migration, cases brought by Indigenous peoples, local communities and other groups disproportionately affected by climate change, and cases addressing liability following extreme weather events. The report also anticipates challenges in applying the science of climate attribution as well as a rise in “backlash” cases against litigants which aim to dismantle regulations that promote climate action.\n\nKey climate litigation cases and matters covered in the report include:\n\nThe UN Human Rights Committee concluding for the first time that a country has violated international human rights law through climate policy and climate inaction, finding Australia’s government is in violation of its human rights obligations to Torres Strait Islanders;\nBrazil’s Supreme Court holding that the Paris Agreement is a human rights treaty, which enjoys “supranational” status;\nA Dutch court ordering oil and gas company Shell to comply with the Paris Agreement and reduce its carbon dioxide emissions by 45 per cent from 2019 levels by 2030. This was the first time a court found a private company to have a duty under the Paris Agreement;\nGermany’s court striking down parts of the Federal Climate Protection Act as incompatible with the rights to life and health\nA court in Paris holding that France’s climate inaction and failure to meet its carbon budget goals have caused climate-related ecological damages\nA United Kingdom court finding that the government had failed to comply with its legal duties under its Climate Change Act 2008 when approving its net-zero strategy;\nEfforts to obtain advisory opinions on climate change from the International Court of Justice and the International Tribunal for the Law of the Sea are being initiated and driven by Small Island Developing States."),
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
