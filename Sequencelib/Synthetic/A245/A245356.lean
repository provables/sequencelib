/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245356 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A245356, offset := 1, maxIndex := 46, derive := true]
def A245356 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x _y) ↦ 1 + ((x / 3) + x)) x 0 / 2) + 2) / 2) * 2) * 2

end Sequence