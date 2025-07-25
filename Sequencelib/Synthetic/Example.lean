import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

namespace Sequence

@[OEIS := A000010, offset := 5, maxIndex := 10, derive := true]
def foo (n : ℕ) : ℤ :=
  let x := n - 5
  if (x) ≤ 0 then (1) else (loop (λ(x y : ℤ) ↦ (x + x)) ((x + x)) (2))

end Sequence
