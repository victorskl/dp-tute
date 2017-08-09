
public abstract class Expr {
    // abstract methods
}

public class NumExpr extends Expr {
    int value;
    // implement abstract methods
}

public class VarExpr extends Expr {
    String name;
    // implement abstract methods
}

public class BinExpr extends Expr {
    Binop binop;
    Expr arg1;
    Expr arg2;
    // implement abstract methods
}

public class UnExpr extends Expr {
    Unop unop;
    Expr arg;
    // implement abstract methods
}
