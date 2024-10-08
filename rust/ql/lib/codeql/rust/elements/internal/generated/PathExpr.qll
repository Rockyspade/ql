// generated by codegen, do not edit
/**
 * This module provides the generated definition of `PathExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.internal.ExprImpl::Impl as ExprImpl
import codeql.rust.elements.Path

/**
 * INTERNAL: This module contains the fully generated definition of `PathExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A path expression. For example:
   * ```rust
   * let x = variable;
   * let x = foo::bar;
   * let y = <T>::foo;
   * let z = <TypeRef as Trait>::foo;
   * ```
   * INTERNAL: Do not reference the `Generated::PathExpr` class directly.
   * Use the subclass `PathExpr`, where the following predicates are available.
   */
  class PathExpr extends Synth::TPathExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "PathExpr" }

    /**
     * Gets the `index`th attr of this path expression (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertPathExprToRaw(this).(Raw::PathExpr).getAttr(index))
    }

    /**
     * Gets any of the attrs of this path expression.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this path expression.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the path of this path expression, if it exists.
     */
    Path getPath() {
      result =
        Synth::convertPathFromRaw(Synth::convertPathExprToRaw(this).(Raw::PathExpr).getPath())
    }

    /**
     * Holds if `getPath()` exists.
     */
    final predicate hasPath() { exists(this.getPath()) }
  }
}
