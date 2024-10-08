// generated by codegen/codegen.py, do not edit
/**
 * This module provides the public class `ParameterizedProtocolType`.
 */

private import internal.ParameterizedProtocolTypeImpl
import codeql.swift.elements.type.ProtocolType
import codeql.swift.elements.type.Type

/**
 * A sugar type of the form `P<X>` with `P` a protocol.
 *
 * If `P` has primary associated type `A`, then `T: P<X>` is a shortcut for `T: P where T.A == X`.
 */
final class ParameterizedProtocolType = Impl::ParameterizedProtocolType;
