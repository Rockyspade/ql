// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from RefType x, string hasLifetime, string hasTy
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.hasLifetime() then hasLifetime = "yes" else hasLifetime = "no") and
  if x.hasTy() then hasTy = "yes" else hasTy = "no"
select x, "hasLifetime:", hasLifetime, "hasTy:", hasTy
