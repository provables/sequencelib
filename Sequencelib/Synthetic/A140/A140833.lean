/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140833 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A140833, offset := 0, maxIndex := 100, derive := true]
def A140833 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x (x % 2) 1

end Sequence