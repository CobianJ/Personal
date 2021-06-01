//Group - Sajid Khan, Josh Cobian, Zachary Simmons
TreeNode tree;
TreeNode current;
String s="Welcome to the dealership, take this survey to find the perfect car for you!\nDo you want a family vehicle or a compact? Compact(right) Family(left)?";
BinarySearchTree t;
Scenes sc;
boolean one=false;
boolean two=false;
boolean rav=false;
boolean royce=false;
boolean escape=false;
boolean front=false;
boolean prius=false;
boolean soul=false;
boolean fit=false;
boolean chevy=false;
boolean zero=false;
boolean isLeaf;
private int levelCount=0;

void setup() {
  size(800, 600);
  t=new BinarySearchTree();
  tree=t.buildTree();
  current=tree;
  sc=new Scenes();
  isLeaf=false;
}

void draw() {
  background(0);
  fill(255);
  textSize(20);
  text(s, 45, height/2);
  
  if (rav==true || royce==true || escape==true || front==true || prius==true || soul==true || fit==true || chevy==true) {
    isLeaf = true;
  } else {
    isLeaf=false;
  }
  if (zero==true) {
    sc.scene0();
  } else if (rav==true) {
    sc.rav4();
    text("Retake survey?(press UP)", 200, 400);
  } else if (escape==true) {
    sc.FordEscape();
    text("Retake survey?(press UP)", 200, 400);
  } else if (prius==true) {
    sc.prius();
    text("Retake survey?(press UP)", 200, 400);
  } else if (fit==true) {
    sc.fit();
    text("Retake survey?(press UP)", 200, 400);
  } else if (royce==true) {
    sc.cullinan();
    text("Retake survey?(press UP)", 200, 400);
  } else if (front==true) {
    sc.frontier();
    text("Retake survey?(press UP)", 200, 400);
  } else if (soul==true) {
    sc.soul();
    text("Retake survey?(press UP)", 200, 400);
  } else if (chevy==true) {
    sc.chevy();
    text("Retake survey?(press UP)", 200, 400);
  } else if (two==true) {
    sc.scene2();
    text("play again? (press down arrow)", 200, 400);
  } else {
    zero=true;
  }
}

void keyPressed() {
  //check();

  if (keyCode == LEFT && isLeaf == false) {

    s=(String)current.getLeft().getValue();
    System.out.println(s);

    if (current.getLeft()==null) {
      s="Press UP to restart the survey";
    } else if (s.equals("You would probably be interested in the Toyota Rav4")) {//done
      rav=true;
      zero=false;
    } else if (s.equals("You would probably be interested in the Ford Escape Hybrid")) {//done
      escape=true;
      zero=false;
    } else if (s.equals("You would probably be interested in the Toyota Prius")) {//done
      prius=true;
      zero=false;
    } else if (s.equals("You would probably be interested in the Honda Fit")) {//done
      fit=true;
      zero=false;
    } else {
      current= current.getLeft();
      s=(String)current.getValue();///////
    }
  } else if (keyCode == RIGHT && isLeaf == false) {
    s=(String)current.getRight().getValue();
    System.out.println(s);

    if (current.getRight()==null) {
      s="Press UP to restart the survey";
    } else if (s.equals("You would probably be interested in the Rolls Royce Cullinan")) {//done
      royce=true;
      zero=false;
    } else if (s.equals("You would probably be interested in the Nissan Frontier")) {//done
      front=true;
      zero=false;
    } else if (s.equals("You would probably be interested in the Kia Soul")) {//done
      soul=true;
      zero=false;
    } else if (s.equals("You would probably be interested in the Chevy Malibu")) {
      chevy=true;
      zero=false;
    } else {
      current = current.getRight();
      s=(String)current.getValue();///////
    }
  } else if (keyCode == UP) {
    current=tree;
    s=(String)current.getValue();
    one=true;
    two=false;
    rav=false;
    royce=false;
    escape=false;
    front=false;
    prius=false;
    soul=false;
    fit=false;
    chevy=false;
    zero=false;
  }
}

void check() {

  println(levelCount);
  if (levelCount>3&&keyCode==DOWN) {
    println("play Again");
    zero=true;
    levelCount=0;
    current=tree;
    s="Press UP to restart the survey";
    System.out.println(s);
  }
  levelCount+=1;
}


interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
