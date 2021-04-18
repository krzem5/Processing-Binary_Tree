class Node{
	int v;
	Node l;
	Node r;



	Node(int v,Node l,Node r){
		this.v=v;
		this.l=l;
		this.r=r;
	}



	IntList search(int v,IntList a){
		a.append(this.v);
		if (v==this.v){
			return a;
		}
		if (this.l!=null&&v<this.v){
			return this.l.search(v,a);
		}
		if (this.r!=null&&v>this.v){
			return this.r.search(v,a);
		}
		return null;
	}
}
