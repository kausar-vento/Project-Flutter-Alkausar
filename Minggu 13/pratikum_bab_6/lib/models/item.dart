class Item {
  int _id;
  String _name;
  int _price;

  Item(this._id, this._name, this._price);

  int get id => this._id;

  set id(int value) => this._id = value;

  get name => this._name;

  set name(value) => this._name = value;

  get price => this._price;

  set price(value) => this._price = value;


  fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }
}
