/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053436 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A053436, offset := 1, maxIndex := 100, derive := true]
def A053436 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) (x / 2) x

end Sequence