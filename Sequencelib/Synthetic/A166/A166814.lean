/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166814 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A166814, offset := 1, maxIndex := 78, derive := true]
def A166814 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ loop (λ (x y) ↦ 2 + (x + y)) y x) (1 + x) x * x) + x) / 2

end Sequence
