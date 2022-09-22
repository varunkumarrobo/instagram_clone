import 'package:flutter/material.dart';
import 'package:instagram_clone/demo1/dummy/dummy_data.dart';
import 'package:instagram_clone/demo1/utils/text_utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextUtils _textUtils = TextUtils();

  List<SuggestedPostModel> suggestedPostList = [];

  @override
  void initState() {
    super.initState();

    addData();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children:  [
          const SizedBox(
            height: 10,
          ),
          searchBarWidget(),
          const SizedBox(
            height: 10,
          ),
          suggestedPostWidget()
        ],
      ),
    );
  }
  Widget searchBarWidget(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),color: Colors.white,
      ),
      child: Row(
        children:  [
          const Expanded(child: Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
          flex: 1,
          ),
          Expanded(child: _textUtils.normal16('Search', Colors.black),
          flex: 6,
          ),
        ],
      ),
    );
  }
  Widget suggestedPostWidget(){
    return Column(
      children: [
        for(int i = 0; i < suggestedPostList.length; i++)
          if(suggestedPostList[i].containsVideo)showWithVideoWidget(i)
          else showWithoutVideoWidget(i)
      ],
    );
  }
   showWithVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(flex: 1,
              child: Column(
            children: [
                Container(
                width: MediaQuery.of(context).size.width * 0.335,
                height: MediaQuery.of(context).size.width * 0.335,
                child: Image.network(suggestedPostList[index].contentLink1,
                fit: BoxFit.fill,
                ),
              ),
                Container(
                width: MediaQuery.of(context).size.width*0.335,
                height: MediaQuery.of(context).size.width*0.335,
                child: Image.network(suggestedPostList[index].contentLink2,
                fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          ),
          Expanded(flex:2,
              child: Container(
            margin: const EdgeInsets.only(left: 2),
                height: MediaQuery.of(context).size.width*0.67,
                child: Image.network(suggestedPostList[index].contentLink3,
                fit: BoxFit.fill,
                ),
          ),),
        ],
      ),
    );
   }

  showWithoutVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(
              flex:1,
              child: Container(
                margin: const EdgeInsets.only(right: 1),
                height: MediaQuery.of(context).size.width*0.33,
                child: Image.network(suggestedPostList[index].contentLink1,
                fit: BoxFit.fill,
                ),
          ),),
          Expanded(
            flex:1,
            child: Container(
              margin: const EdgeInsets.only(right: 1,left: 1),
              height: MediaQuery.of(context).size.width*0.33,
              child: Image.network(suggestedPostList[index].contentLink2,
                fit: BoxFit.fill,
              ),
            ),),
          Expanded(
            flex:1,
            child: Container(
              margin: const EdgeInsets.only(left: 1),
              height: MediaQuery.of(context).size.width*0.33,
              child: Image.network(suggestedPostList[index].contentLink3,
                fit: BoxFit.fill,
              ),
            ),),
        ],
      ),
    );
  }
  void addData(){
    suggestedPostList.add(SuggestedPostModel(false,
        'https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg',
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*',
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85',));
    suggestedPostList.add(SuggestedPostModel(true,
        'https://media.gettyimages.com/photos/cricket-stumps-picture-id172866257?k=20&m=172866257&s=612x612&w=0&h=SmMxo8wPj_U1Izg_VN6Uy7x5WWQVANz908KGJnjp06s=',
        'https://media.gettyimages.com/photos/cricket-cricket-stadium-picture-id641856978?k=20&m=641856978&s=612x612&w=0&h=2GJ_09-kogJph3wKZuatjbf7KAqgd-fk0R1_-3kOaLU=',
        'https://media.gettyimages.com/illustrations/cricket-player-strikes-the-ball-for-six-illustration-id166080748?k=20&m=166080748&s=612x612&w=0&h=7Gz64UD4KeX9PwbQh1IZJOCRRpvfHu_DDTSRnBE7lD0='));
    suggestedPostList.add(SuggestedPostModel(false,
        'https://media.gettyimages.com/photos/cricket-ball-picture-id173798559?k=20&m=173798559&s=612x612&w=0&h=Z8MdNRSqGlDppMY3TDNjF2aMPZB7f963Q7ljauI8l-Q=',
        'https://media.gettyimages.com/photos/batsman-playing-defensive-stroke-picture-id172731119?k=20&m=172731119&s=612x612&w=0&h=KVeQe-EWcqV4ofJhfwT6AuOUsdmFtVr7InoNiR_Z3fs=',
        'https://media.gettyimages.com/photos/virat-kohli-of-of-india-looks-on-during-a-review-during-the-icc-mens-picture-id1348608227?k=20&m=1348608227&s=612x612&w=0&h=aWGTDqvsqiScKPwzxRpauF0a636ucTAU2kbqh8ol2Yw='));
    suggestedPostList.add(SuggestedPostModel(true,
        'https://media.gettyimages.com/photos/cricket-player-in-action-picture-id688945456?k=20&m=688945456&s=612x612&w=0&h=NG_jylOu750if5VqGoaBBv6K4rcQQ6wIApOpq54krrY=',
        'https://media.gettyimages.com/photos/indian-cricket-team-pose-with-the-asia-cup-2018-after-defeating-in-picture-id1042667872?k=20&m=1042667872&s=612x612&w=0&h=6qB7Puo9gjI5TfinFTnWqdcoHstOoe-25iO-487zoNw=',
        'https://media.gettyimages.com/photos/female-cricket-batter-hitting-the-ball-picture-id1202097527?k=20&m=1202097527&s=612x612&w=0&h=1ZQxxbx5j6jBafvbKSU66gBA3ZDRJNauML0gg7L2loQ='));
  }
}





