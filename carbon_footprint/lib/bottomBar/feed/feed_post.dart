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
        "The total number of climate change court cases has more than doubled since 2017 and is growing worldwide. These findings, published today by the UN Environment Programme (UNEP) and the Sabin Center for Climate Change Law at Columbia University, show that climate litigation is becoming an integral part of securing climate action and justice.\n\nThe report, Global Climate Litigation Report: 2023 Status Review,is based on a review of cases focused on climate change law, policy or science collected up to 31 December 2022 by the Sabin Center’s US and Global Climate Change Litigation Databases. It is published a day ahead of the first anniversary of the UN General Assembly’s declaration of access to a clean and healthy environment as a universal human right. \n\nClimate policies are far behind what is needed to keep global temperatures below the 1.5°C threshold, with extreme weather events and searing heat already baking our planet,” said Inger Andersen, Executive Director of UNEP. “People are increasingly turning to courts to combat the climate crisis, holding governments and the private sector accountable and making litigation a key mechanism for securing climate action and promoting climate justice.\n\nThe report provides an overview of key climate litigation cases from the past two years, including historic breakthroughs (see selected cases below). As climate litigation increases in frequency and volume, the body of legal precedent grows, forming an increasingly well-defined field of law. \n\nThe report provides an overview of key climate litigation cases from the past two years, including historic breakthroughs (see selected cases below). As climate litigation increases in frequency and volume, the body of legal precedent grows, forming an increasingly well-defined field of law.\n\nThe total number of climate change cases has more than doubled since a first report on the issue, from 884 in 2017 to 2,180 in 2022. While most cases have been brought in the US, climate litigation is taking root all over the world, with about 17 per cent of cases now being reported in developing countries, including Small Island Developing States. \n\nThese legal actions were brought in 65 bodies worldwide: in international, regional, and national courts, tribunals, quasi-judicial bodies, and other adjudicatory bodies, including special procedures of the UN and arbitration tribunals.\n\nThere is a distressingly growing gap between the level of greenhouse gas reductions the world needs to achieve in order to meet its temperature targets, and the actions that governments are actually taking to lower emissions. This inevitably will lead more people to resort to the courts. This report will be an invaluable resource for everyone who wants to achieve the best possible outcome in judicial forums, and to understand what is and is not possible there,” said Michael Gerrard, Sabin Center’s Faculty Director.\n\nThe report demonstrates how the voices of vulnerable groups are being heard globally: 34 cases have been brought by and on behalf of children and youth under 25 years old, including by girls as young as seven and nine years of age in Pakistan and India respectively, while in Switzerland, plaintiffs are making their case based on the disproportionate impact of climate change on senior women.\n\nNotable cases have challenged government decisions based on a project’s inconsistency with the goals of the Paris Agreement or a country’s net-zero commitments. Growing awareness of climate change in recent years has also spurred action against corporations - these include cases seeking to hold fossil fuel companies and other greenhouse gas emitters responsible for climate harm.\n\nAccording to the report, most ongoing climate litigation falls into one or more of six categories: 1) cases relying on human rights enshrined in international law and national constitutions; 2) challenges to domestic non-enforcement of climate-related laws and policies; 3) litigants seeking to keep fossil fuels in the ground; 4) advocates for greater climate disclosures and an end to greenwashing; 5) claims addressing corporate liability and responsibility for climate harms; and 6) claims addressing failures to adapt to the impacts of climate change.\n\nThe report demonstrates how courts are finding strong human rights linkages to climate change. This is leading to greater protections for the most vulnerable groups in society, as well as increased accountability, transparency and justice, compelling governments and corporations to pursue more ambitious climate change mitigation and adaptation goals.\n\nIn the future, the report predicts a rise in the number of cases dealing with climate migration, cases brought by Indigenous peoples, local communities and other groups disproportionately affected by climate change, and cases addressing liability following extreme weather events. The report also anticipates challenges in applying the science of climate attribution as well as a rise in “backlash” cases against litigants which aim to dismantle regulations that promote climate action.\n\nKey climate litigation cases and matters covered in the report include:\n\nThe UN Human Rights Committee concluding for the first time that a country has violated international human rights law through climate policy and climate inaction, finding Australia’s government is in violation of its human rights obligations to Torres Strait Islanders;\nBrazil’s Supreme Court holding that the Paris Agreement is a human rights treaty, which enjoys “supranational” status;\nA Dutch court ordering oil and gas company Shell to comply with the Paris Agreement and reduce its carbon dioxide emissions by 45 per cent from 2019 levels by 2030. This was the first time a court found a private company to have a duty under the Paris Agreement;\nGermany’s court striking down parts of the Federal Climate Protection Act as incompatible with the rights to life and health\nA court in Paris holding that France’s climate inaction and failure to meet its carbon budget goals have caused climate-related ecological damages\nA United Kingdom court finding that the government had failed to comply with its legal duties under its Climate Change Act 2008 when approving its net-zero strategy;\nEfforts to obtain advisory opinions on climate change from the International Court of Justice and the International Tribunal for the Law of the Sea are being initiated and driven by Small Island Developing States."),
    Article("Carbon footprint: current methods of estimation",
        "Increasing greenhouse gaseous concentration in the atmosphere is perturbing the environment to cause grievous global warming and associated consequences. Following the rule that only measurable is manageable, mensuration of greenhouse gas intensiveness of different products, bodies, and processes is going on worldwide, expressed as their carbon footprints. The methodologies for carbon footprint calculations are still evolving and it is emerging as an important tool for greenhouse gas management. The concept of carbon footprinting has permeated and is being commercialized in all the areas of life and economy, but there is little coherence in definitions and calculations of carbon footprints among the studies. There are disagreements in the selection of gases, and the order of emissions to be covered in footprint calculations. Standards of greenhouse gas accounting are the common resources used in footprint calculations, although there is no mandatory provision of footprint verification. Carbon footprinting is intended to be a tool to guide the relevant emission cuts and verifications, its standardization at international level are therefore necessary. Present review describes the prevailing carbon footprinting methods and raises the related issues.."),
    Article(
        "The carbon footprint of buildings: A review of methodologies and applications",
        "The carbon emissions associated with the built environment represent the dominant fraction of the total carbon footprint of society. As a result of the intense debate over how to address climate change, Life-Cycle Carbon Emissions Assessment and carbon footprint standards such as the PAS2050, ISO/TS 14067, and the GHG Protocol, are receiving increased attention. However, carbon emission calculations often vary in terms of boundaries, scope, units of greenhouse gas emissions, and methodologies. There is not an internationally accepted method for measuring, reporting, and verifying GHG emissions from existing buildings in a consistent and comparable way. In support of developing a standardized approach, this paper reviews current methodologies for carbon footprint accounting and outlines the inconsistencies of most life-cycle carbon assessments studies. The paper also aims to present the cutting-edge knowledge about emissions resulting from buildings during their life-cycle. The conclusion of this research, after a comprehensive literature review and critical analysis, is that there is a need for a clear, accessible and consistent method to assess the carbon emissions from buildings. The findings in this paper can also support and facilitate the discussion of the meaningful targets required to reduce carbon emissions."),
    Article("Carbon Footprint of Nations: A Global, Trade-Linked Analysis",
        "Processes causing greenhouse gas (GHG) emissions benefit humans by providing consumer goods and services. This benefit, and hence the responsibility for emissions, varies by purpose or consumption category and is unevenly distributed across and within countries. We quantify greenhouse gas emissions associated with the final consumption of goods and services for 73 nations and 14 aggregate world regions. We analyze the contribution of 8 categories: construction, shelter, food, clothing, mobility, manufactured products, services, and trade. National average per capita footprints vary from 1 tCO2e/y in African countries to ∼30t/y in Luxembourg and the United States. The expenditure elasticity is 0.57. The cross-national expenditure elasticity for just CO2, 0.81, corresponds remarkably well to the cross-sectional elasticities found within nations, suggesting a global relationship between expenditure and emissions that holds across several orders of magnitude difference. On the global level, 72% of greenhouse gas emissions are related to household consumption, 10% to government consumption, and 18% to investments. Food accounts for 20% of GHG emissions, operation and maintenance of residences is 19%, and mobility is 17%. Food and services are more important in developing countries, while mobility and manufactured goods rise fast with income and dominate in rich countries. The importance of public services and manufactured goods has not yet been sufficiently appreciated in policy. Policy priorities hence depend on development status and country-level characteristics."),
    Article("The Importance of Carbon Footprint Estimation Boundaries",
        "Because of increasing concern about global climate change and carbon emissions as a causal factor, many companies and organizations are pursuing “carbon footprint” projects to estimate their own contributions to global climate change. Protocol definitions from carbon registries help organizations analyze their footprints. The scope of these protocols varies but generally suggests estimating only direct emissions and emissions from purchased energy, with less focus on supply chain emissions. In contrast, approaches based on comprehensive environmental life-cycle assessment methods are available to track total emissions across the entire supply chain, and experience suggests that following narrowly defined estimation protocols will generally lead to large underestimates of carbon emissions for providing products and services. Direct emissions from an industry are, on average, only 14% of the total supply chain carbon emissions (often called Tier 1 emissions), and direct emissions plus industry energy inputs are, on average, only 26% of the total supply chain emissions (often called Tier 1 and 2 emissions). Without a full knowledge of their footprints, firms will be unable to pursue the most cost-effective carbon mitigation strategies. We suggest that firms use the screening-level analysis described here to set the bounds of their footprinting strategy to ensure that they do not ignore large sources of environmental effects across their supply chains. Such information can help firms pursue carbon and environmental emission mitigation projects not only within their own plants but also across their supply chain."),
    Article(
        "A renewable approach to capture CO2 in Iran: thermodynamic and energy analyses",
        "The significant potential of using wind energy, accessible energy of solar irradiation in large areas of Iran, and global warming challenges are the motivations to develop a solar-wind energy-based system for CO2 capturing. The innovative proposed system includes a chemical absorption-based process to capture CO2 from flue gas. The captured CO2 is liquefied by a solar absorption refrigeration process. The excessive heat of the exothermic chemical reactions provides the required heat of a Kalina cycle. The Kalina power cycle and a wind turbine rotor supply the required power of the CO2 removal system. Furthermore, parabolic trough collectors are also employed to provide the required heat of the refrigeration and separation systems. Ingoing mass and energy streams of the overall hybrid system are 50009kmoleh−1 flue gas and solar energy. Moreover, the outgoing stream is 4192kmoleh−1 liquid CO2. The system is simulated aiming at Aspen HYSYS simulator and energy-exergy analyzed. The overall exergy efficiency of the system is 34.09%, and more than 78.87% of exergy is destroyed in re-boiler and towers by 43.32% and 35.55%, respectively. According to sensitivity analysis, local time, temperature and mass flow of lean amine, number of stripper trays, and the mass flow of flue gas affect optical efficiency of collectors, exergy destruction and efficiency rates of equipment, the energy consumption of the system, production rate of liquid CO2 and the number of parabolic trough collectors. Furthermore, the optimum altitude of the wind turbine installation is 50m. The required energy of the developed system is supplied by the sun and waste heat energy of the flue gas. Therefore, it is a zero energy system that captures CO2 and mitigates the harmful effects of global warming."),
    Article(
        "A Methodological Framework for Developing More Just Footprints: The Contribution of Footprints to Environmental Policies and Justice",
        "The rapid growth of human population and associated industrialisation creates strains on resources and climate. One way to understand the impact of human activity is to quantify the total environmental pressures by measuring the ‘footprint’. Footprints account for the total direct and/or indirect effects of a product or a consumption activity, which may be related to e.g. carbon, water or land use, and can be seen as a proxy for environmental responsibility. Footprints shape climate and resource debates, especially concerning environmental strategies. However, in general, footprints hold a dichotomous producer–consumer perspective that is not unanimously accepted. In addition, the current footprinting system transmits a simplistic message about environmental responsibility that taints the justice debate and jeopardises the validity of policies based on them. Consequently, it is crucial to question who is (and should be) accountable for adverse environmental effects. It is also critical to investigate how the methodological characteristics of footprints shape and affect the efficacy of policies on climate and natural resources. This article examines these challenges, focusing on negative justice and policy implications resulting from assigning environmental responsibility to a sole agent. The article proposes, and morally justifies, the development of a footprinting method that includes justice parameters in an attempt to render fair results that are more meaningful for environmental action. The second objective is to establish the potential of this new framework to promote environmental responsibility and justice while facilitating policymaking. The suggested justice elements aim at turning footprints into a concrete environmental policy instrument framed under the value of environmental fairness."),
    Article("The carbon footprint of global tourism",
        "Tourism contributes significantly to global gross domestic product, and is forecast to grow at an annual 4%, thus outpacing many other economic sectors. However, global carbon emissions related to tourism are currently not well quantified. Here, we quantify tourism-related global carbon flows between 160 countries, and their carbon footprints under origin and destination accounting perspectives. We find that, between 2009 and 2013, tourism’s global carbon footprint has increased from 3.9 to 4.5 GtCO2e, four times more than previously estimated, accounting for about 8% of global greenhouse gas emissions. Transport, shopping and food are significant contributors. The majority of this footprint is exerted by and in high-income countries. The rapid increase in tourism demand is effectively outstripping the decarbonization of tourism-related technology. We project that, due to its high carbon intensity and continuing growth, tourism will constitute a growing part of the world’s greenhouse gas emissions."),
    Article("A better carbon footprint label",
        "Based on insights from behavioral economics, it is suggested to extend carbon footprint labeling with information about relative performance, using the well-known “traffic light” color scheme to communicate relative performance. To test this proposition, the impact of a carbon footprint label on Danish consumers' choice of ground coffee was tested in a 3 price levels × 3 levels of carbon emission × 3 certifying organizations × 2 organic labeling conditions discrete choice experiment. Participants were randomly assigned to two slightly different variants of the experiment: In one condition, participants saw the original Carbon Trust label and in the other condition they saw the same label, but with traffic light colors added to communicate the product's relative performance in terms of carbon footprint. All included attributes were found to have a significant impact on consumer choices. As expected, price and carbon footprint were negatively related to choice. Further, participants preferred organic to non-organic coffee and certification by a public authority. The effect of the carbon label is significantly stronger the more environmentally concerned the consumer is. Using colors to indicate relative carbon footprint significantly increases carbon label effectiveness. Hence, a carbon footprint label is more effective if it uses traffic light colors to communicate the product's relative performance."),
    Article("Green Algorithms: Quantifying the Carbon Footprint of Computation",
        "Climate change is profoundly affecting nearly all aspects of life on earth, including human societies, economies, and health. Various human activities are responsible for significant greenhouse gas (GHG) emissions, including data centers and other sources of large-scale computation. Although many important scientific milestones are achieved thanks to the development of high-performance computing, the resultant environmental impact is underappreciated. In this work, a methodological framework to estimate the carbon footprint of any computational task in a standardized and reliable way is presented and metrics to contextualize GHG emissions are defined. A freely available online tool, Green Algorithms (www.green-algorithms.org) is developed, which enables a user to estimate and report the carbon footprint of their computation. The tool easily integrates with computational processes as it requires minimal information and does not interfere with existing code, while also accounting for a broad range of hardware configurations. Finally, the GHG emissions of algorithms used for particle physics simulations, weather forecasts, and natural language processing are quantified. Taken together, this study develops a simple generalizable framework and freely available tool to quantify the carbon footprint of nearly any computation. Combined with recommendations to minimize unnecessary CO2 emissions, the authors hope to raise awareness and facilitate greener computation."),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(article.content),
        ),
      ),
    );
  }
}
