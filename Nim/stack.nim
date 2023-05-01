type
  Stack[T] = object
    data: seq[T]

proc newStack*[T](): Stack[T] =
  result.data = newSeq[T]()  # initialize an empty sequence

proc push*[T](s: var Stack[T], value: T) =
  s.data.add(value)

proc pop*[T](s: var Stack[T]) =
    if s.data.len > 0:
        s.data.delete(0)

proc getCurrent*[T](s: var Stack[T]):T=
    if s.data.len() > 0:
        result = s.data[0]
    else: result = 0



