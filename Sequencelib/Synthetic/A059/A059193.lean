/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059193 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A059193, offset := 1, maxIndex := 100, derive := true]
def A059193 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + ((1 + x) + x)) * loop (λ (_x y) ↦ y + y) x 1

end Sequence