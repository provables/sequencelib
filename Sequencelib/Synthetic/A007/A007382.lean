/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007382 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A007382, offset := 1, maxIndex := 29, derive := true]
def A007382 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 2 1 - 1) - loop2 (λ (x y) ↦ (x + y) / x) (λ (x _y) ↦ x) x 1 1

end Sequence