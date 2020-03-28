class Fraction {
  int nom, denom;
  Fraction(int nom, int denom) {
    this.nom=nom;
    this.denom=denom;
  }
  float get() {
    return (float)this.nom/this.denom;
  }
  Fraction clone() {
    return new Fraction(this.nom,this.denom);
  }
}
