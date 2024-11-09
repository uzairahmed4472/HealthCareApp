
class PredictModel {
  List<Predictions>? predictions;

  PredictModel({this.predictions});

  PredictModel.fromJson(Map<String, dynamic> json) {
    if(json["predictions"] is List) {
      predictions = json["predictions"] == null ? null : (json["predictions"] as List).map((e) => Predictions.fromJson(e)).toList();
    }
  }

  static List<PredictModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(PredictModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(predictions != null) {
      _data["predictions"] = predictions?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Predictions {
  String? disease;
  int? matchingSymptoms;
  double? predictionScore;

  Predictions({this.disease, this.matchingSymptoms, this.predictionScore});

  Predictions.fromJson(Map<String, dynamic> json) {
    if(json["disease"] is String) {
      disease = json["disease"];
    }
    if(json["matching_symptoms"] is int) {
      matchingSymptoms = json["matching_symptoms"];
    }
    if(json["prediction_score"] is double) {
      predictionScore = json["prediction_score"];
    }
  }

  static List<Predictions> fromList(List<Map<String, dynamic>> list) {
    return list.map(Predictions.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["disease"] = disease;
    _data["matching_symptoms"] = matchingSymptoms;
    _data["prediction_score"] = predictionScore;
    return _data;
  }
}