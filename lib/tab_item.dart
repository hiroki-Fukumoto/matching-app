enum TabItem { home, like, message }

extension TabItemExt on TabItem {
  String get name {
    switch (this) {
      case TabItem.home:
        return 'home';
      case TabItem.like:
        return 'like';
      case TabItem.message:
        return 'message';
    }
  }
}
