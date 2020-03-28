class Tree {
  Node root;
  Tree(JSONObject data) {
    this.root=this._p(data);
  }
  IntList search(int v) {
    IntList a=new IntList();
    return this.root.search(v, a);
  }
  Node _p(JSONObject json) {
    Node l=null, r=null;
    if (json.hasKey("l")) {
      l=this._p(json.getJSONObject("l"));
    }
    if (json.hasKey("r")) {
      r=this._p(json.getJSONObject("r"));
    }
    return new Node(json.getInt("v"), l, r);
  }
  void _dr(Node n, Fraction fr, int y) {
    ellipseMode(CENTER);
    noFill();
    stroke(255);
    ellipse(width*fr.get(), y, 20, 20);
    if (n.left!=null) {
      Fraction f=fr.clone();
      f.nom*=2;
      f.nom-=1;
      f.denom*=2;
      this._dr(n.left,f,y+40);
    }
    if (n.right!=null) {
      Fraction f=fr.clone();
      f.nom*=2;
      f.nom+=1;
      f.denom*=2;
      this._dr(n.right,f,y+40);
    }
  }
  void draw() {
    this._dr(this.root, new Fraction(1,2), 40);
  }
}
