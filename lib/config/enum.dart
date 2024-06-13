enum FeedFilter {
  viewAll(text: 'View all'),

  myInterests(text: 'My interests');

  final String text;

  const FeedFilter({required this.text});
}
