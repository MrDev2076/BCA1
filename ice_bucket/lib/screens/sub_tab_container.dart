import 'package:flutter/material.dart';

class SubTabContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: TabBar(
            tabs: [
              Tab(text: "Starters"),
              Tab(text: "Drinks"),
              Tab(text: "Mixes"),
              Tab(text: "Juices"),
            ],
            indicatorColor: Colors.blue,
          ),
        ),
        body: TabBarView(
          children: [
            TabContent(),
            TabContent(),
            TabContent(),
            TabContent(),
          ],
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        Text(
          'DRINKS technology is the tool you need to enter the online alcohol space. Whether you’re an SMB installing our Shopify App to an existing store or an enterprise integrating your proprietary e-commerce shop directly to our WaaS® platform API, you can trust our technology to power your complaint alcohol transactions across the USA.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Image.network('https://drinks.com/hubfs/drinks-home-waas-1.jpg'),
      ],
    );
  }
}
