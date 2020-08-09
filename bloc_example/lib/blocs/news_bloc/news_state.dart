import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NewsState extends Equatable {
  final bool loading;
  final List<dynamic> news;

  NewsState({@required this.loading, @required this.news});

  static NewsState initialState() => NewsState(loading: false, news: []);

  NewsState copyWith({bool loading, List<dynamic> news}) {
    return NewsState(loading: loading??this.loading, news: news??this.news);
  }

  @override
  List<Object> get props => [this.loading,this.news];

  // bool operator == (o){
  //   return o is NewsState && o.loading==loading && o.news.length==news.length;
  // }

  // @override
  // int get hashCode => loading.hashCode^news.hashCode;
}
