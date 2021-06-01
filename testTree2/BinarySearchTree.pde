class BinarySearchTree {

  private TreeNode root;
  private TreeNode current;

  public BinarySearchTree() {
    root=null;
  }

  TreeNode buildTree() {
    
    root=new TreeNode("Do you want a family vehicle or a compact? Compact(right) Family(left)?");
    //level one
    root.setLeft(new TreeNode("Do you need lots of space? Yes(right) No(left)"));
    root.setRight(new TreeNode("Do you need lots of space? Yes(right) No(left)"));
    //level two
    root.getLeft().setLeft(new TreeNode("Do you want the most fuel efficient vehicle? Yes(right) No(left)"));
    root.getRight().setRight(new TreeNode("Do you want the most fuel efficient vehicle? Yes(right) No(left)"));
    root.getLeft().setRight(new TreeNode("Do you want the most fuel efficient vehicle? Yes(right) No(left)"));
    root.getRight().setLeft(new TreeNode("Do you want the most fuel efficient vehicle? Yes(right) No(left)"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("You would probably be interested in the Toyota Rav4"));
    root.getLeft().getLeft().setRight(new TreeNode("You would probably be interested in the Rolls Royce Cullinan"));
    root.getLeft().getRight().setLeft(new TreeNode("You would probably be interested in the Ford Escape Hybrid"));
    root.getLeft().getRight().setRight(new TreeNode("You would probably be interested in the Nissan Frontier"));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("You would probably be interested in the Chevy Malibu"));
    root.getRight().getRight().setLeft(new TreeNode("You would probably be interested in the Honda Fit"));
    root.getRight().getLeft().setLeft(new TreeNode("You would probably be interested in the Toyota Prius"));
    root.getRight().getLeft().setRight(new TreeNode("You would probably be interested in the Kia Soul"));
    current=root;
    return current;
  }

  TreeNode returnTree() {
    current=root;
    return root;
  }

  private void inorder() {
    inorder(root);
  }

  public void inorder(TreeNode t) {
    if (t!=null) {
      inorder(t.getLeft());
      System.out.println(t.getValue());
      inorder(t.getRight());
    }
  }
}
