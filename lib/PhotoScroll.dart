import 'package:flutter/material.dart';
import 'package:myapp/infomation.dart';

class PhotoScroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoScroll_State();
  }
}

class _PhotoScroll_State extends State<PhotoScroll> {

  final Infomation _info;
  List<Characters> _char;
  int _page;
  final int _defaultCharPerPageCount = 10;
  final int _nextPageThreshold = 5;

  _PhotoScroll_State() : _info = new Infomation();

  bool _hasMore = true;
  bool _error = false;
  bool _loading = true;

  final int _defaultPeoplePerPageCount = 10;
  final int _nextPageThreshold = 5;

  @override
  void initState() {
    super.initState();
    _page = 1;
    _char = [];
    fetchChar();
    
    _hasMore = true;
    _error = false;
    _loading = true;
  }

  Future<void> fetchChar() async {
  
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
        );
      }

}