// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `UnboundGenericType`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.internal.AnyGenericTypeImpl::Impl as AnyGenericTypeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `UnboundGenericType` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::UnboundGenericType` class directly.
   * Use the subclass `UnboundGenericType`, where the following predicates are available.
   */
  class UnboundGenericType extends Synth::TUnboundGenericType, AnyGenericTypeImpl::AnyGenericType {
    override string getAPrimaryQlClass() { result = "UnboundGenericType" }
  }
}
