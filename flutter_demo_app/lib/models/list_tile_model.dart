class ListTileModel {
  String? title;
  String? subtitle;
  String? leading;
  String? trailing;

  ListTileModel({this.title, this.subtitle, this.leading, this.trailing});

  ListTileModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    leading = json['leading'];
    trailing = json['trailing'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['leading'] = leading;
    data['trailing'] = trailing;
    return data;
  }
}
