// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr

module Generated {
  class ImplicitConversionExpr extends Synth::TImplicitConversionExpr, Expr {
    Expr getImmediateSubExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertImplicitConversionExprToRaw(this)
              .(Raw::ImplicitConversionExpr)
              .getSubExpr())
    }

    final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }
  }
}
