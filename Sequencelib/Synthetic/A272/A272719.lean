/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A272719 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A272719, offset := 2, maxIndex := 6, derive := true]
def A272719 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| if x ≤ 0 then 2 else loop (λ (x y) ↦ x + y) (1 + x) 2

end Sequence