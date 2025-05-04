import 'home_model.dart';
import 'package:tripmacha/core/constants/app_constants.dart';

class HomeRepository
{
  List<HomeModel> fetchCarouselItems()=>[
    HomeModel('Beach', AppAssets.beach),
    HomeModel('Mountain', AppAssets.mountain),
    HomeModel('Waterfall', AppAssets.waterfall),


  ];

  List<HomeModel> fetchRecommendations()=>[
    HomeModel('Beach', AppAssets.beach),
    HomeModel('Mountain', AppAssets.mountain),
    HomeModel('Waterfall', AppAssets.waterfall),
  ];
}