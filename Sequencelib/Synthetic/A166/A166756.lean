/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166756 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A166756, offset := 1, maxIndex := 80, derive := true]
def A166756 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ x + y) (2 + (x + x)) 2 - x) * (x + x)) + 1) + x) * x

end Sequence