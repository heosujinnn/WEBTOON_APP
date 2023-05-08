import 'package:http/http.dart' as http;

class ApiService{
  final String baseUrl="https://webtoon-crawler.nomadcoders.workers.dev";
  final String today="today";

  void getTodaysToons()async{
    final url=Uri.parse('$baseUrl/$today');
    final response=await http.get(url); //api요청이 처리돼서 응답할때까지 기다림: 비동기 프로그램 async (코드를 실행하다가 무언갈 기다려야할 때가 있다. 다음 줄로 넘어가기 전에)
    //get함수 완료 됨-> 완료될 때 response를 반환하는데 우리 서버의 응답에 대한 정보가 담겨있고 그 응답을 사용하고 싶어!!!!

    if(response.statusCode==200){
      print(response.body); //서버가 보낸 데이터출력
      return ;
    }
    throw Error();

  }
}
