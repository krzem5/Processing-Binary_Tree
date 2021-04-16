Tree tree;
void setup() {
  size(1920,1080);
  tree=new Tree(loadJSONObject("tree.json"));
}
void draw() {
  background(0);
  tree.draw();
  noLoop();
}
