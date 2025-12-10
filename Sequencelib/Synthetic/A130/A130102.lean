/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130102 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A130102, offset := 0, maxIndex := 100, derive := true]
def A130102 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ (((loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 0 else y) x x + y) * x) - 1) + x) x 1 - 1) + 1) %
      loop (λ (x _y) ↦ x + x) x 1) +
    1) -
  x

end Sequence