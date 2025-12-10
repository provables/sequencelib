/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350293 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A350293, offset := 1, maxIndex := 7, derive := true]
def A350293 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((((loop (λ (x y) ↦ (1 + (2 * (2 + x))) + y) x 1 - x) / 3) + x) + x) + 1) / 2) + 1) + x) * (1 + x)) / 3) +
            x) +
          x) +
        1) /
      2) +
    1) -
  x

end Sequence