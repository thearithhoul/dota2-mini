import 'package:dota2_app/app/Model/hero_model.dart';
import 'package:dota2_app/app/Model/result_state/result_state.dart';
import 'package:dota2_app/app/Services/hero_service.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final _heroService = HeroService();

  var resultState = const ResultState<List<HeroModel>>.idle();
  List<HeroModel> _originalList = [];

  List<HeroModel> _filterList = [];
  bool _hasMore = false;
  bool get hasMore => _hasMore;
  List<HeroModel> _paginateList = [];

  String _attributeSelect = '';
  String get attributeSelect => _attributeSelect;

  int _complexitySelect = -1;
  int get complexitySelect => _complexitySelect;

  Future<void> getListHero() async {
    resultState = const ResultState.idle();
    await _heroService.getherosList().then(
      (response) {
        resultState = const ResultState.loading();
        notifyListeners();
        response.when(
          success: (data) {
            _originalList = data;
            _filterListFunc();
          },
          failure: (error) {
            resultState = ResultState.error(error);
          },
        );
        notifyListeners();
      },
    );
  }

  void complexitySelectFunc(int index) {
    if (_complexitySelect == index) {
      _complexitySelect = -1;
    } else {
      _complexitySelect = index;
    }
    _filterListFunc();
    notifyListeners();
  }

  void attributeSelectFunc(String name) {
    if (_attributeSelect == name) {
      _attributeSelect = '';
    } else {
      _attributeSelect = name;
    }
    _filterListFunc();
    notifyListeners();
  }

  void paginationFunc() {
    if (_paginateList.length + 20 >= _filterList.length) {
      _paginateList.addAll(_filterList.sublist(_paginateList.length));
      _hasMore = false;
      notifyListeners();
      return;
    }
    _hasMore = true;
    int last = _paginateList.length;
    int next = _paginateList.length + 20;
    List<HeroModel> nextRange = _filterList.sublist(last, next);
    _paginateList.addAll(nextRange);

    notifyListeners();
  }

  void searchFunc(String text) {
    if (text.isEmpty) {
      _filterListFunc();
      return;
    }
    List<HeroModel> searchList = _searchHero(text);
    resultState = ResultState.data(searchList);
    notifyListeners();
  }

  void _filterListFunc() {
    _paginateList.clear();
    _filterList = _originalList.toList();
    _filterList = _filterAttribute(_filterList);
    _filterList = _filterComplexity(_filterList);
    print(_filterList.length);
    paginationFunc();
    resultState = ResultState.data(_paginateList);
    notifyListeners();
  }

  List<HeroModel> _searchHero(String text) {
    return _originalList
        .where(
          (element) => element.hero_name.contains(text),
        )
        .toList();
  }

  List<HeroModel> _filterAttribute(List<HeroModel> list) {
    if (_attributeSelect == '') {
      return list;
    }
    return list
        .where(
          (element) => element.hero_type == _attributeSelect,
        )
        .toList();
  }

  List<HeroModel> _filterComplexity(List<HeroModel> list) {
    if (_complexitySelect == -1) {
      return list;
    }
    return list
        .where(
          (element) => element.complexity_lvl == _complexitySelect + 1,
        )
        .toList();
  }
}

class Attribute {
  final String name;
  final String image;

  Attribute({
    required this.name,
    required this.image,
  });
}
