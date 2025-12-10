/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088140 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A088140, offset := 2, maxIndex := 79, derive := true]
def A088140 (n : ℕ) : ℤ :=
  let x := n - 2
  if (loop (λ (x y) ↦ x * y) x x % (2 + x)) ≤ 0 then 2 + x else 1

end Sequence