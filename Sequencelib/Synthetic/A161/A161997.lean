/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161997 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A161997, offset := 4, maxIndex := 8, derive := true]
def A161997 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| ((loop (λ (x _y) ↦ 1 + (2 * (x + x))) (2 - x) 2 - x) / 2) + 2

end Sequence