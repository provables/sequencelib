/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182687 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A182687, offset := 1, maxIndex := 40, derive := true]
def A182687 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if ((x / 2) / 2) ≤ 0 then loop (λ (_x y) ↦ 2 * y) x 1 else 0

end Sequence