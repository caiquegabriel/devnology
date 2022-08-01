// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Cart on CartBase, Store {
  late final _$cartItemsAtom =
      Atom(name: 'CartBase.cartItems', context: context);

  @override
  List<Product> get cartItems {
    _$cartItemsAtom.reportRead();
    return super.cartItems;
  }

  @override
  set cartItems(List<Product> value) {
    _$cartItemsAtom.reportWrite(value, super.cartItems, () {
      super.cartItems = value;
    });
  }

  late final _$valueAtom = Atom(name: 'CartBase.value', context: context);

  @override
  double get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(double value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$CartBaseActionController =
      ActionController(name: 'CartBase', context: context);

  @override
  void addItem(Product product) {
    final _$actionInfo =
        _$CartBaseActionController.startAction(name: 'CartBase.addItem');
    try {
      return super.addItem(product);
    } finally {
      _$CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(Product product) {
    final _$actionInfo =
        _$CartBaseActionController.startAction(name: 'CartBase.removeItem');
    try {
      return super.removeItem(product);
    } finally {
      _$CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculeTotalValue() {
    final _$actionInfo = _$CartBaseActionController.startAction(
        name: 'CartBase.calculeTotalValue');
    try {
      return super.calculeTotalValue();
    } finally {
      _$CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartItems: ${cartItems},
value: ${value}
    ''';
  }
}
