
import 'package:flutter/material.dart';

class ChooseTalent extends StatefulWidget {
  @override
  _ChooseTalentState createState() => _ChooseTalentState();
}

class _ChooseTalentState extends State<ChooseTalent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _buildAppBar(),
          _buildHeader(),
          SliverGrid.count(
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: <Widget>[
              const Text('He\'d have you all unravel at the'),
              const Text('Heed not the rabble'),
              const Text('Sound of screams but the'),
              const Text('Who scream'),
              const Text('Revolution is coming...'),
              const Text('Revolution, they...'),
            ],
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader() {
    return SliverToBoxAdapter(
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Text('Demustra tu talento' ),
            new Text('Selecciona un sector')
          ],
        ),
      ),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      title: Text("EnKuentra"),
      centerTitle: true,
    );
  }
}
