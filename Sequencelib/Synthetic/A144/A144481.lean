/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144481 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A144481, offset := 1, maxIndex := 36, derive := true]
def A144481 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((loop (λ (x _y) ↦ x * x) 1 (if 1 ≤ 0 then 2 else x) + 1) * 2) + 2) * 2) + 1) + 2) + x) * 2) + 1) / 2) +
              x) +
            x) +
          1) +
        2) -
      2) +
    2) %
  loop (λ (x _y) ↦ (x + x) + x) 2 1

end Sequence