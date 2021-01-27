class Node {
  int value;
  Node left, right;
  Node(int v, Node l, Node r) {
    this.value=v;
    this.left=l;
    this.right=r;
  }
  IntList search(int v, IntList a) {
    a.append(this.value);
    if (v==this.value) {
      return a;
    }
    if (this.left!=null&&v<this.value) {
      return this.left.search(v,a);
    }
    if (this.right!=null&&v>this.value) {
      return this.right.search(v,a);
    }
    return null;
  }
}
