import Mathlib
import Sequencelib.Meta

@[OEIS := A000079, maxIndex := 10, derive := true]
def PowersOfTwo (n : ℕ) : ℕ := 2 ^ n
