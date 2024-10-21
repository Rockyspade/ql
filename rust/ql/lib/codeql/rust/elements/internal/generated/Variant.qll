// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Variant`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.rust.elements.Attr
import codeql.rust.elements.Expr
import codeql.rust.elements.FieldList
import codeql.rust.elements.Name
import codeql.rust.elements.Visibility

/**
 * INTERNAL: This module contains the fully generated definition of `Variant` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A Variant. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::Variant` class directly.
   * Use the subclass `Variant`, where the following predicates are available.
   */
  class Variant extends Synth::TVariant, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "Variant" }

    /**
     * Gets the `index`th attr of this variant (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertVariantToRaw(this).(Raw::Variant).getAttr(index))
    }

    /**
     * Gets any of the attrs of this variant.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this variant.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the expression of this variant, if it exists.
     */
    Expr getExpr() {
      result = Synth::convertExprFromRaw(Synth::convertVariantToRaw(this).(Raw::Variant).getExpr())
    }

    /**
     * Holds if `getExpr()` exists.
     */
    final predicate hasExpr() { exists(this.getExpr()) }

    /**
     * Gets the field list of this variant, if it exists.
     */
    FieldList getFieldList() {
      result =
        Synth::convertFieldListFromRaw(Synth::convertVariantToRaw(this)
              .(Raw::Variant)
              .getFieldList())
    }

    /**
     * Holds if `getFieldList()` exists.
     */
    final predicate hasFieldList() { exists(this.getFieldList()) }

    /**
     * Gets the name of this variant, if it exists.
     */
    Name getName() {
      result = Synth::convertNameFromRaw(Synth::convertVariantToRaw(this).(Raw::Variant).getName())
    }

    /**
     * Holds if `getName()` exists.
     */
    final predicate hasName() { exists(this.getName()) }

    /**
     * Gets the visibility of this variant, if it exists.
     */
    Visibility getVisibility() {
      result =
        Synth::convertVisibilityFromRaw(Synth::convertVariantToRaw(this)
              .(Raw::Variant)
              .getVisibility())
    }

    /**
     * Holds if `getVisibility()` exists.
     */
    final predicate hasVisibility() { exists(this.getVisibility()) }
  }
}
