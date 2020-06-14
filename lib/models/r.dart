import './has_menu_status.dart';

class R {
  HasMenuStatus hasMenuStatus;
  int resId;
  bool isGroceryStore;

  R({this.hasMenuStatus, this.resId, this.isGroceryStore});

  R.fromJson(Map<String, dynamic> json) {
    hasMenuStatus = json['has_menu_status'] != null
        ? new HasMenuStatus.fromJson(json['has_menu_status'])
        : null;
    resId = json['res_id'];
    isGroceryStore = json['is_grocery_store'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hasMenuStatus != null) {
      data['has_menu_status'] = this.hasMenuStatus.toJson();
    }
    data['res_id'] = this.resId;
    data['is_grocery_store'] = this.isGroceryStore;
    return data;
  }
}