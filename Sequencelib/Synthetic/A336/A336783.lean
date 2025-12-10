/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A336783 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A336783, offset := 1, maxIndex := 3, derive := true]
def A336783 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ x * x) 2 2 + y) (λ (x y) ↦ x + y) x 1 2 + 2) + 2) *
      ((x + x) + loop (λ (x y) ↦ x + y) x 1)) +
    x) +
  x

end Sequence