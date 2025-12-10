/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110000 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A110000, offset := 3, maxIndex := 10, derive := true]
def A110000 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((loop (λ (x y) ↦ x * y) x 1 - (1 + x)) % 4) + 1) + 2 * (x / 2)

end Sequence