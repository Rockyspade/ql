// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.pattern.Pattern

module Generated {
  class ParenPattern extends Synth::TParenPattern, Pattern {
    override string getAPrimaryQlClass() { result = "ParenPattern" }

    Pattern getImmediateSubPattern() {
      result =
        Synth::convertPatternFromRaw(Synth::convertParenPatternToRaw(this)
              .(Raw::ParenPattern)
              .getSubPattern())
    }

    final Pattern getSubPattern() { result = getImmediateSubPattern().resolve() }
  }
}
