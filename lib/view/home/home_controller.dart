import 'package:get/get.dart';
import 'package:skor_id_flutter/model/local_model.dart';

class HomeController extends GetxController {
  var topic = ''.obs;
  var listTopic = <Topic>[
    Topic('Future Tech', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS296OGdNzDrondREzGPn_FBCQUzmTevckb0Q&usqp=CAU'),
    Topic('Cyptocurrency', 'https://disk.mediaindonesia.com/thumbs/1800x1200/news/2021/06/624b0264e17758f4a4394526096afc03.jpg'),
    Topic('Gaming', 'https://signal.avg.com/hubfs/Blog_Content/Avg/Signal/AVG%20Signal%20Images/9%20Ways%20to%20Boost%20Your%20Gaming%20Rig/How_to_Improve_Your_Gaming_PC_Performance-Hero.jpg'),
    Topic('Business', 'https://dieng.blob.core.windows.net/ict/2019/02/business-3152586_960_720.jpg'),
    Topic('Fintech', 'https://cdn0-production-images-kly.akamaized.net/c0YO00WUAHLWLUqmdZZNNMT5z88=/640x480/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2294069/original/086042800_1532755755-New_Project.jpg'),
    Topic('Self Development', 'https://lp2m.uma.ac.id/wp-content/uploads/2021/01/PersonalDevelopment.jpg'),
    Topic('Startups', 'https://lh3.googleusercontent.com/proxy/SDCqSi_0M13QrpxZjRNQ7ZCpVQKtvSW7QSisy8_Y40kJqqAESyvuN8iZ-ReX_G09d5KnBfFxx7A7XjaXwYU1VROoBp78hKET7jpixvIJUYR0z4-g57J4NuzgwFXZ'),
    Topic('Software', 'https://sm.pcmag.com/pcmag_ap/news/t/the-best-f/the-best-free-software-of-2020_gfyq.jpg'),
    Topic('Design', 'https://cepagram.com/wp-content/uploads/2020/06/design-tools.jpeg'),
  ];
  var filteredTopic = <Topic>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    filteredTopic.assignAll(listTopic);
  }

  search(String value) {
    topic(value.toLowerCase());

    filteredTopic.clear();

    listTopic.forEach((elementTopic) {
      final array = elementTopic.title.contains(' ') ? elementTopic.title.split(' ') : <String>[];

      if (array.isNotEmpty) {
        array.forEach((elementChar) {
          if (elementChar.toLowerCase().contains(topic.value)) filteredTopic.add(elementTopic);
        });
      } else {
        if (elementTopic.title.toLowerCase().contains(topic.value)) filteredTopic.add(elementTopic);
      }
    });
  }
}