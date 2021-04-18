class Fraction{
	int n;
	int dn;



	Fraction(int n,int dn){
		this.n=n;
		this.dn=dn;
	}



	float get(){
		return (float)this.n/this.dn;
	}



	Fraction clone(){
		return new Fraction(this.n,this.dn);
	}
}
