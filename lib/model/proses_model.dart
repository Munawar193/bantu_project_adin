class ProsesModel {
  int? dosis;
  Pesan? pesan;

  ProsesModel({this.dosis, this.pesan});

  ProsesModel.fromJson(Map<String, dynamic> json) {
    dosis = json['dosis'];
    pesan = json['pesan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dosis'] = dosis;
    if (pesan != null) {
      data['pesan'] = pesan!.toJson();
    }
    return data;
  }
}

class Pesan {
  String? levelDaun;
  NilaiPresentase? nilaiPresentase;
  String? levelAngka;

  Pesan({this.levelDaun, this.nilaiPresentase, this.levelAngka});

  Pesan.fromJson(Map<String, dynamic> json) {
    levelDaun = json['Level daun'];
    nilaiPresentase = json['Nilai presentase'] != null
        ? NilaiPresentase.fromJson(json['Nilai presentase'])
        : null;
    levelAngka = json['level angka'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Level daun'] = levelDaun;
    if (nilaiPresentase != null) {
      data['Nilai presentase'] = nilaiPresentase!.toJson();
    }
    data['level angka'] = levelAngka;
    return data;
  }
}

class NilaiPresentase {
  int? level1;
  int? level2;
  int? level3;
  int? level4;
  int? level5;
  int? level6;
  int? level7;
  int? level8;

  NilaiPresentase({
    this.level1,
    this.level2,
    this.level3,
    this.level4,
    this.level5,
    this.level6,
    this.level7,
    this.level8,
  });

  NilaiPresentase.fromJson(Map<String, dynamic> json) {
    level1 = json['level 1'];
    level2 = json['level 2'];
    level3 = json['level 3'];
    level4 = json['level 4'];
    level5 = json['level 5'];
    level6 = json['level 6'];
    level7 = json['level 7'];
    level8 = json['level 8'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['level 1'] = level1;
    data['level 2'] = level2;
    data['level 3'] = level3;
    data['level 4'] = level4;
    data['level 5'] = level5;
    data['level 6'] = level6;
    data['level 7'] = level7;
    data['level 8'] = level8;
    return data;
  }
}
