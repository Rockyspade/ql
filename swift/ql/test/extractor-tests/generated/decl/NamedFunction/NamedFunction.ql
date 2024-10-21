// generated by codegen/codegen.py, do not edit
import codeql.swift.elements
import TestUtils

from
  NamedFunction x, string hasName, string hasSelfParam, int getNumberOfParams, string hasBody,
  int getNumberOfCaptures, int getNumberOfGenericTypeParams, ModuleDecl getModule,
  int getNumberOfMembers, Type getInterfaceType
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.hasName() then hasName = "yes" else hasName = "no") and
  (if x.hasSelfParam() then hasSelfParam = "yes" else hasSelfParam = "no") and
  getNumberOfParams = x.getNumberOfParams() and
  (if x.hasBody() then hasBody = "yes" else hasBody = "no") and
  getNumberOfCaptures = x.getNumberOfCaptures() and
  getNumberOfGenericTypeParams = x.getNumberOfGenericTypeParams() and
  getModule = x.getModule() and
  getNumberOfMembers = x.getNumberOfMembers() and
  getInterfaceType = x.getInterfaceType()
select x, "hasName:", hasName, "hasSelfParam:", hasSelfParam, "getNumberOfParams:",
  getNumberOfParams, "hasBody:", hasBody, "getNumberOfCaptures:", getNumberOfCaptures,
  "getNumberOfGenericTypeParams:", getNumberOfGenericTypeParams, "getModule:", getModule,
  "getNumberOfMembers:", getNumberOfMembers, "getInterfaceType:", getInterfaceType
