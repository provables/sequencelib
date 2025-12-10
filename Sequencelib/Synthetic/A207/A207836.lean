/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A207836 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A207836, offset := 2, maxIndex := 100, derive := true]
def A207836 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (2 * (y + y)) - x) x 0 (2 + x)

end Sequence