// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.Element

module Generated {
  class Type extends Synth::TType, Element {
    string getName() { result = Synth::convertTypeToRaw(this).(Raw::Type).getName() }

    Type getImmediateCanonicalType() {
      result =
        Synth::convertTypeFromRaw(Synth::convertTypeToRaw(this).(Raw::Type).getCanonicalType())
    }

    final Type getCanonicalType() { result = getImmediateCanonicalType().resolve() }
  }
}
