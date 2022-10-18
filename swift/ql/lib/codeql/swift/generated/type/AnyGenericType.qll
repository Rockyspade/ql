// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.decl.Decl
import codeql.swift.elements.type.Type

module Generated {
  class AnyGenericType extends Synth::TAnyGenericType, Type {
    Type getImmediateParent() {
      result =
        Synth::convertTypeFromRaw(Synth::convertAnyGenericTypeToRaw(this)
              .(Raw::AnyGenericType)
              .getParent())
    }

    final Type getParent() { result = getImmediateParent().resolve() }

    final predicate hasParent() { exists(getParent()) }

    Decl getImmediateDeclaration() {
      result =
        Synth::convertDeclFromRaw(Synth::convertAnyGenericTypeToRaw(this)
              .(Raw::AnyGenericType)
              .getDeclaration())
    }

    final Decl getDeclaration() { result = getImmediateDeclaration().resolve() }
  }
}
