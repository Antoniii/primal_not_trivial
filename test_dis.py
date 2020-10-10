from dis import dis

def double(value):
	return value * 2

def aDD(value=1):
	return (value + 3) * 5

dis(aDD)

"""
  7           0 LOAD_FAST                0 (value)
              2 LOAD_CONST               1 (3)
              4 BINARY_ADD
              6 LOAD_CONST               2 (5)
              8 BINARY_MULTIPLY
             10 RETURN_VALUE
"""