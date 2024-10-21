// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `PathPat`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.PathPat

/**
 * INTERNAL: This module contains the customizable definition of `PathPat` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * A path pattern. For example:
   * ```rust
   * match x {
   *     Foo::Bar => "ok",
   *     _ => "fail",
   * }
   * ```
   */
  class PathPat extends Generated::PathPat { }
}
