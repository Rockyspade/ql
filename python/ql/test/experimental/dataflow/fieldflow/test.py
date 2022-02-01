import sys
import os

sys.path.append(os.path.dirname(os.path.dirname((__file__))))
from testlib import *

# These are defined so that we can evaluate the test code.
NONSOURCE = "not a source"
SOURCE = "source"


def is_source(x):
    return x == "source" or x == b"source" or x == 42 or x == 42.0 or x == 42j


def SINK(x):
    if is_source(x):
        print("OK")
    else:
        print("Unexpected flow", x)


def SINK_F(x):
    if is_source(x):
        print("Unexpected flow", x)
    else:
        print("OK")


# ------------------------------------------------------------------------------
# Actual tests
# ------------------------------------------------------------------------------

class MyObj(object):
    def __init__(self, foo):
        self.foo = foo

    def setFoo(self, foo):
        self.foo = foo

def setFoo(obj, x):
    SINK_F(obj.foo)
    obj.foo = x

@expects(2)
def test_indirect_assign():
    myobj = MyObj("OK")

    setFoo(myobj, SOURCE)
    SINK(myobj.foo) # $ flow="SOURCE, l:-1 -> myobj.foo"


def test_indirect_assign_method():
    myobj = MyObj("OK")

    myobj.setFoo(SOURCE)
    SINK(myobj.foo) # $ MISSING: flow


def test_constructor_assign():
    obj = MyObj(SOURCE)
    SINK(obj.foo) # $ flow="SOURCE, l:-1 -> obj.foo"


def test_constructor_assign_kw():
    obj = MyObj(foo=SOURCE)
    SINK(obj.foo) # $ flow="SOURCE, l:-1 -> obj.foo"


def fields_with_local_flow(x):
    obj = MyObj(x)
    a = obj.foo
    return a

def test_fields():
    SINK(fields_with_local_flow(SOURCE)) # $ flow="SOURCE -> fields_with_local_flow(..)"

# ------------------------------------------------------------------------------
# Nested Object
# ------------------------------------------------------------------------------

class NestedObj(object):
    def __init__(self):
        self.obj = MyObj("OK")

    def getObj(self):
        return self.obj


def test_nested_obj():
    x = SOURCE
    a = NestedObj()
    a.obj.foo = x
    SINK(a.obj.foo) # $ flow="SOURCE, l:-3 -> a.obj.foo"


def test_nested_obj_method():
    x = SOURCE
    a = NestedObj()
    a.getObj().foo = x
    SINK(a.obj.foo) # $ MISSING: flow
