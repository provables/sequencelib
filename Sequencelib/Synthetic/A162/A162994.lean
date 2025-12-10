/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162994 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A162994, offset := 3, maxIndex := 16, derive := true]
def A162994 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (loop (λ (x y) ↦ (1 + (2 + y)) * x) (1 + x) 2)

end Sequence