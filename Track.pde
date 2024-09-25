class Track {
  private String title;
  private String artist;
  private String len;

  public Track(String t, String a, String l) {
    title = t;
    artist = a;
    len = l;
  }

  public String toString() {
    String returnVal = title + "\n" + artist + "\n" + len;
    return returnVal;
  }
}
