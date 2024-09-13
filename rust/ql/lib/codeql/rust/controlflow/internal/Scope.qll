private import rust
private import Completion
private import ControlFlowGraphImpl
private import codeql.rust.generated.ParentChild

abstract class CfgScope extends AstNode {
  abstract predicate scopeFirst(AstNode first);

  abstract predicate scopeLast(AstNode last, Completion c);
}

final class FunctionScope extends CfgScope, Function {
  override predicate scopeFirst(AstNode node) { first(this.getBody(), node) }

  override predicate scopeLast(AstNode node, Completion c) { last(this.getBody(), node, c) }
}

final class LambdaScope extends CfgScope, ClosureExpr {
  override predicate scopeFirst(AstNode node) { first(this.getBody(), node) }

  override predicate scopeLast(AstNode node, Completion c) { last(this.getBody(), node, c) }
}

/**
 * Gets the immediate parent of a non-`AstNode` element `e`.
 *
 * We restrict `e` to be a non-`AstNode` to skip past non-`AstNode` in
 * the transitive closure computation in `getParentOfAst`. This is
 * necessary because the parent of an `AstNode` is not necessarily an `AstNode`.
 */
private Element getParentOfAstStep(Element e) {
  not e instanceof AstNode and
  result = getImmediateParent(e)
}

/** Gets the nearest enclosing parent of `ast` that is an `AstNode`. */
private AstNode getParentOfAst(AstNode ast) {
  result = getParentOfAstStep*(getImmediateParent(ast))
}

/** Gets the enclosing scope of a node */
cached
AstNode scopeOfAst(AstNode n) {
  exists(AstNode p | p = getParentOfAst(n) |
    if p instanceof CfgScope then p = result else result = scopeOfAst(p)
  )
}
