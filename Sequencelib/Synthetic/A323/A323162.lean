/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323162 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A323162, offset := 1, maxIndex := 100, derive := true]
def A323162 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x y) ↦ ((y % 2) + y) * x) x 1 + x) - 1) + 2) / if x ≤ 0 then 2 else 0 + x) - x) + 1) % (x + 1)) % 2

end Sequence