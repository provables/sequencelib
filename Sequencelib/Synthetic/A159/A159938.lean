/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159938 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A159938, offset := 2, maxIndex := 38, derive := true]
def A159938 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 + (2 * loop (λ (x y) ↦ (y * y) + x) x x)

end Sequence