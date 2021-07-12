import 'package:flutter/cupertino.dart';
import 'package:myapp/infomation.dart';

class PhotoScroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoScrollState();
  }
}

class _PhotoScrollState extends State {
  final Infomation _repo;
  late List<Character> _characters;
  late int _page;

  _PhotoScrollState() : _repo = new Infomation();

  void initState() {
    super.initState();
    _page = 1;
    _characters = [];
    fetchPeople();
  }

  Future<void> fetchPeople() async {
    var character = await _repo.fetchPeople(page: _page);
    setState(() {
      _characters = List<Character>.from(character);
      _characters.addAll(character);
    });
  }

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _characters.length,
        itemBuilder: (context, index) {
          return Text(_characters[index].name);
        });
  }
}