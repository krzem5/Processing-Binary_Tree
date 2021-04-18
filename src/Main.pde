Tree t;



void setup(){
	size(1920,1080);
	t=new Tree(loadJSONObject("tree.json"));
}



void draw(){
	background(0);
	t.draw();
	noLoop();
}
