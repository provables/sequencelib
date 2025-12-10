/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289877 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A289877, offset := 2, maxIndex := 41, derive := true]
def A289877 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((((((loop (λ (x y) ↦ x + y) (2 * (x + 2)) 1 * (1 + x)) / 2) + x) / 2) + 1) + x) / 2) + x) + x

end Sequence