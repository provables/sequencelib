/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267141 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A267141, offset := 10, maxIndex := 26, derive := true]
def A267141 (n : ℕ) : ℕ :=
  let x := n - 10
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) 4 y * x) x 3 * 2

end Sequence