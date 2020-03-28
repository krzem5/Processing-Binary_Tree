Tree tree;
void setup() {
  size(600,400);
  tree=new Tree(loadJSONObject("tree.json"));
}
void draw() {
  background(0);
  tree.draw();
  noLoop();
}
