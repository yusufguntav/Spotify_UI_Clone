enum Images {
  image1,
  image2,
  image3,
  image4,
  image5,
  image6;

  String get getImagePath {
    switch (this) {
      case Images.image1:
        return 'assets/images/image1.jpg';
      case Images.image2:
        return 'assets/images/image2.jpg';
      case Images.image3:
        return 'assets/images/image3.jpg';
      case Images.image4:
        return 'assets/images/image4.jpg';
      case Images.image5:
        return 'assets/images/image5.jpg';
      case Images.image6:
        return 'assets/images/image6.jpg';
    }
  }
}

enum Type {
  playlist,
  podcasAndShows,
  albums,
  artists,
  music,
  comedy,
  fiction,
  business,
  art,
  sports,
  educational,
  technology;

  String get getName {
    switch (this) {
      case Type.technology:
        return 'Technology';
      case Type.educational:
        return 'Educational';
      case Type.sports:
        return 'Sports';
      case Type.art:
        return 'Art';
      case Type.business:
        return 'Business';
      case Type.comedy:
        return 'Comedy';
      case Type.fiction:
        return 'Fiction';
      case Type.albums:
        return 'Albums';
      case Type.podcasAndShows:
        return 'Podcast & Shows';
      case Type.playlist:
        return 'Playlists';
      case Type.artists:
        return 'Artist';
      case Type.music:
        return 'Music';
    }
  }
}
