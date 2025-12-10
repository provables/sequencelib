/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094177 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A094177, offset := 1, maxIndex := 6, derive := true]
def A094177 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ ((x + x) + x) - y) x 2 / 2) * 2) + 2) / (1 + x)

end Sequence