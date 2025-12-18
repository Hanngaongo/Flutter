class Article {
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final String? content;
  final String? sourceName;

  Article({
    required this.title,
    required this.description,
    required this.url,
    this.urlToImage,
    this.content,
    this.sourceName,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    
    final sourceName = json['source'] != null ? json['source']['name'] : 'Nguồn ẩn danh';

    return Article(
      
      title: json['title'] ?? 'Tiêu đề không có',
      description: json['description'] ?? 'Không có mô tả',
      url: json['url'] ?? '',
      
      urlToImage: json['urlToImage'] as String?,
      content: json['content'] as String?,
      sourceName: sourceName,
    );
  }
}