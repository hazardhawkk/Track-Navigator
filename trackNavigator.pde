import java.util.ArrayList;
import java.util.Scanner;

ArrayList<Track> tracks;
String fileName;
Scanner in;

int trackIndex;

Button button1, button2;

void setup() {
  size(600, 400);
  tracks = new ArrayList<Track>();
  fileName = sketchPath() + "/DailyMix.csv";
  in = InputReader.getScanner(fileName);

  trackIndex = 0;

  readAllTracks();

  button1 = new Button(400, 300, 100, 75);
  button2 = new Button(100, 300, 100, 75);
}

void draw() {
  background(255);

  //local variable to store the track on screen
  Track track = tracks.get(trackIndex);
  textSize(32);
  fill(0, 0, 255);
  text(track.toString(), 200, 200);
  button1.setLabel("Next");
  button1.display();
  button2.setLabel("Prev");
  button2.display();
}

void readAllTracks() {
  while (in.hasNext()) {
    String line = in.nextLine();
    //creates an array called parts of the parts of the line
    String[] parts = line.split(",");
    //uses the parts array to construct a Track object
    Track track;
    track = new Track(parts[0], parts[1], parts[2]);
    //adds the track object to our ArrayList
    tracks.add(track);
  }
}

void mousePressed() {
  if (button1.isInside(mouseX, mouseY) && trackIndex!=tracks.size()-1) {
    trackIndex++;
  }  else if (button2.isInside(mouseX, mouseY) && trackIndex!=0) {
    trackIndex--;
  }
}
