// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from MatchExpr x, int getNumberOfAttrs, string hasMatchedExpr, string hasMatchArmList
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.hasMatchedExpr() then hasMatchedExpr = "yes" else hasMatchedExpr = "no") and
  if x.hasMatchArmList() then hasMatchArmList = "yes" else hasMatchArmList = "no"
select x, "getNumberOfAttrs:", getNumberOfAttrs, "hasMatchedExpr:", hasMatchedExpr,
  "hasMatchArmList:", hasMatchArmList
