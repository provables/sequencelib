/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188375 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A188375, offset := 1, maxIndex := 84, derive := true]
def A188375 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ (((((y * y) + x) / (1 + x)) + 1) + y) + y) (1 + (x / 2)) 0 * 2) + 1) + x) / 2) - 2

end Sequence