from dataclasses import dataclass


@dataclass
class MyClass:
    member: int


def function(mc: MyClass):
    print(mc)
    return []


mc = MyClass(1)
function(mc)
