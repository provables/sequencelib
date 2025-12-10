/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A264932 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A264932, offset := 1, maxIndex := 4, derive := true]
def A264932 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ (x + x) + x) y 1) (λ (x _y) ↦ x) x 1 x

end Sequence