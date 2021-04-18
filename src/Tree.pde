class Tree{
	Node r;



	Tree(JSONObject dt){
		this.r=this._parse(dt);
	}



	void draw(){
		this._draw_rec(this.r,new Fraction(1,2),40);
	}



	IntList search(int v){
		IntList a=new IntList();
		return this.r.search(v,a);
	}



	Node _parse(JSONObject json){
		Node l=null,r=null;
		if (json.hasKey("l")){
			l=this._parse(json.getJSONObject("l"));
		}
		if (json.hasKey("r")){
			r=this._parse(json.getJSONObject("r"));
		}
		return new Node(json.getInt("v"),l,r);
	}



	void _draw_rec(Node n,Fraction fr,int y){
		ellipseMode(CENTER);
		noFill();
		stroke(255);
		ellipse(width*fr.get(),y,80,80);
		if (n.l!=null){
			Fraction f=fr.clone();
			f.n*=2;
			f.n-=1;
			f.dn*=2;
			this._draw_rec(n.l,f,y+120);
		}
		if (n.r!=null){
			Fraction f=fr.clone();
			f.n*=2;
			f.n+=1;
			f.dn*=2;
			this._draw_rec(n.r,f,y+120);
		}
	}
}
