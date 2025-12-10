/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007781 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A007781, offset := 0, maxIndex := 99, derive := true]
def A007781 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) (1 + x) 1 x -
  loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) (if x ≤ 0 then 1 else x) 1 x

end Sequence