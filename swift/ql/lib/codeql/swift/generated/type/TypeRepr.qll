// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `TypeRepr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.swift.elements.type.Type

/**
 * INTERNAL: This module contains the fully generated definition of `TypeRepr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::TypeRepr` class directly.
   * Use the subclass `TypeRepr`, where the following predicates are available.
   */
  class TypeRepr extends Synth::TTypeRepr, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "TypeRepr" }

    /**
     * Gets the type of this type representation.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateType() {
      result =
        Synth::convertTypeFromRaw(Synth::convertTypeReprToRaw(this).(Raw::TypeRepr).getType())
    }

    /**
     * Gets the type of this type representation.
     */
    final Type getType() {
      exists(Type immediate |
        immediate = this.getImmediateType() and
        result = immediate.resolve()
      )
    }
  }
}
