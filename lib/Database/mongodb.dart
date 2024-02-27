import 'package:portfolio/Database/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Mongodatabase {
  static var db, userCollection, user_experience, user_projects, user_details;
  static connect() async {
    db = await Db.create(mongo_URL);
    await db.open();
    userCollection = db.collection(user_Collection);
    user_experience = db.collection(user_Collection_exp);
    user_projects = db.collection(user_Project);
    user_details = db.collection(user_Details);
  }

  static Future<List<Map<String, dynamic>>> getData() async {
    final arrData = await userCollection.find().toList();
    return arrData;
  }

  static Future<List<Map<String, dynamic>>> getDataExp() async {
    final arrData = await user_experience.find().toList();
    return arrData;
  }

  static Future<List<Map<String, dynamic>>> getDataProject() async {
    final arrData = await user_projects.find(where.sortBy('_id')).toList();
    return arrData;
  }

  static Future<List<Map<String, dynamic>>> getDataProjectData() async {
    final arrData = await user_details.find().toList();
    return arrData;
  }
}
