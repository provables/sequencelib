/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097807 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A097807, offset := 0, maxIndex := 80, derive := true]
def A097807 (x : ℕ) : ℤ :=
  (((loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 1 else y) x x + 1) % 2) * 2) - 1

end Sequence