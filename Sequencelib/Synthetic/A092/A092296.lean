/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092296 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A092296, offset := 0, maxIndex := 50, derive := true]
def A092296 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 3) x 1 x % 3) - 1) + x) + x) + x) + 1

end Sequence