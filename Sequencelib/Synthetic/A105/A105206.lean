/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105206 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A105206, offset := 3, maxIndex := 22, derive := true]
def A105206 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x _y) ↦ ((2 * (2 + 4)) / (1 + x)) + 2) 2 x + 1) + x

end Sequence