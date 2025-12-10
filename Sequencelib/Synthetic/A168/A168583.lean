/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168583 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A168583, offset := 3, maxIndex := 29, derive := true]
def A168583 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop2 (λ (x y) ↦ 3 * (x + y)) (λ (_x y) ↦ y + y) x 0 1 + 1

end Sequence