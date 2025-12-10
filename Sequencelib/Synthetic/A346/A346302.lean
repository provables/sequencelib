/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A346302 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A346302, offset := 1, maxIndex := 62, derive := true]
def A346302 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y) ↦ (x - if x ≤ 0 then 0 else 2) / 2) x x + 2) + x) + 2) + x

end Sequence