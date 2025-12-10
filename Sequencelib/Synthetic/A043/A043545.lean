/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A043545 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A043545, offset := 0, maxIndex := 100, derive := true]
def A043545 (x : ℕ) : ℕ :=
  Int.toNat <| 1 % loop (λ (x y) ↦ loop (λ (_x y) ↦ y) (x - 1) y) x 1

end Sequence