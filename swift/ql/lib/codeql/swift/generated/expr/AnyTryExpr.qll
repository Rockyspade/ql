// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr

module Generated {
  class AnyTryExpr extends Synth::TAnyTryExpr, Expr {
    Expr getImmediateSubExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertAnyTryExprToRaw(this).(Raw::AnyTryExpr).getSubExpr())
    }

    final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }
  }
}
