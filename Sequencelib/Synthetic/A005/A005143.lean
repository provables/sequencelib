/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005143 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A005143, offset := 2, maxIndex := 7, derive := true]
def A005143 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((loop (λ (x y) ↦ (x * y) + y) x 0 * x) + 1) / 3) + 1) + x)) + 1) / 2

end Sequence