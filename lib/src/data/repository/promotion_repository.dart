import 'package:dio/dio.dart';
import 'package:induk_club_promotion_app_project/src/data/model/promotion.dart';

class PromotionRepository {
  Dio dio = Dio();

  getPromotions() async {
    // var resp = await dio.get("server-path-url");
    await Future.delayed(const Duration(seconds: 2));
    final resp = [
      {
        "id": 1,
        "author": "한상욱",
        "createAt": "2023년 3월 10일",
        "title": "A&I 신규 동아리원 모집",
        "content":
            "2022학년도에 진행한 스터디그룹 활동으로 처음 모여 모바일 앱 개발 공부 및 협업 프로젝트를 진행했으며, 플레이스토어와 앱스토어에 정식 출시까비 했습니다. 그리고 현재는 새로운 프로젝트를 준비하고 있습니다.",
        "numPeople": 10,
        "begin": "2023년 3월 10일",
        "end": "2024년 1월 10일",
        "contentOfActivity":
            "UI/UX 디자인  프로젝트 화면 (UI)을 디자인하고, 이를 위한 미디어 파일 제작합니다.",
      },
      {
        "id": 2,
        "author": "한상욱",
        "createAt": "2023년 3월 10일",
        "title": "A&I 신규 동아리원 모집",
        "content":
            "2022학년도에 진행한 스터디그룹 활동으로 처음 모여 모바일 앱 개발 공부 및 협업 프로젝트를 진행했으며, 플레이스토어와 앱스토어에 정식 출시까비 했습니다. 그리고 현재는 새로운 프로젝트를 준비하고 있습니다.",
        "numPeople": 10,
        "begin": "2023년 3월 10일",
        "end": "2024년 1월 10일",
        "contentOfActivity":
            "UI/UX 디자인  프로젝트 화면 (UI)을 디자인하고, 이를 위한 미디어 파일 제작합니다.",
      },
      {
        "id": 3,
        "author": "한상욱",
        "createAt": "2023년 3월 10일",
        "title": "A&I 신규 동아리원 모집",
        "content":
            "2022학년도에 진행한 스터디그룹 활동으로 처음 모여 모바일 앱 개발 공부 및 협업 프로젝트를 진행했으며, 플레이스토어와 앱스토어에 정식 출시까비 했습니다. 그리고 현재는 새로운 프로젝트를 준비하고 있습니다.",
        "numPeople": 10,
        "begin": "2023년 3월 10일",
        "end": "2024년 1월 10일",
        "contentOfActivity":
            "UI/UX 디자인  프로젝트 화면 (UI)을 디자인하고, 이를 위한 미디어 파일 제작합니다.",
      },
      {
        "id": 4,
        "author": "한상욱",
        "createAt": "2023년 3월 10일",
        "title": "A&I 신규 동아리원 모집",
        "content":
            "2022학년도에 진행한 스터디그룹 활동으로 처음 모여 모바일 앱 개발 공부 및 협업 프로젝트를 진행했으며, 플레이스토어와 앱스토어에 정식 출시까비 했습니다. 그리고 현재는 새로운 프로젝트를 준비하고 있습니다.",
        "numPeople": 10,
        "begin": "2023년 3월 10일",
        "end": "2024년 1월 10일",
        "contentOfActivity":
            "UI/UX 디자인  프로젝트 화면 (UI)을 디자인하고, 이를 위한 미디어 파일 제작합니다.",
      },
    ];
    List<Promotion> promotions = [];
    for (var data in resp) {
      final promotion = Promotion.fromJson(data);
      promotions.add(promotion);
    }
    return promotions;
  }
}