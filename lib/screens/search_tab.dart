import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  SearchTab({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Find Your Bus'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: SearchMain());
            },
          )
        ],
      ),
      drawer: Drawer(),

    );
  }
}

class SearchMain extends SearchDelegate<String>
{
  final cities = [
    "Pune",
    "Mumbai",
    "Aurangabad",
    "Delhi",
    "Indore",
    "Jalgaon",
    "Kashmir",
    "Jammu",
    "Hadapsar",
    "Rajkot",
    "SriNagar"
  ];

  final recentCities=[
    "Pune",
    "Mumbai"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear),onPressed: (){
        query="";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: transitionAnimation),
        onPressed: (){
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentCities:cities.where((p)=>p.startsWith(query)).toList();

    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap: (){
        showResults(context);
      },
      leading: Icon(Icons.location_city),
      title: RichText(text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [TextSpan(
            text: suggestionList[index].substring(query.length),
            style: TextStyle(color: Colors.grey)
        )],
      ),

      ),
    ),
      itemCount: suggestionList.length,
    );
  }

}