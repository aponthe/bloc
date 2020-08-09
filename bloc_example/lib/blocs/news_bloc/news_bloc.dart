import 'package:bloc/bloc.dart';
import 'news_events.dart';
import 'news_state.dart';

class NewsBloc extends Bloc<NewsEvents, NewsState> {

  //de que tipo son los eventos
  NewsBloc(NewsState initialState) : super(initialState){
    add(LoadEvent());
  }
  
  @override
  Stream<NewsState> mapEventToState(NewsEvents event) async* {
    if (event is LoadEvent) {
      print('load');
      yield this.state.copyWith(loading: false, news: []);
      await Future.delayed(Duration(seconds: 2));
      // print("loading false");
      // yield NewsState(loading: false, news: []);
      yield this.state.copyWith(loading: false, news: []);
    } else if (event is DeleteEvent) {
      print('delete ${event.position}');
    }
  }
}
