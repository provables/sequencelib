/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184587 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A184587, offset := 1, maxIndex := 100, derive := true]
def A184587 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((loop (λ (x y) ↦ (((y * y) + x) / (1 + x)) + y) ((3 + x) + x) 1 + 1) + x) - x) / 2) / 2) + 1) + x

end Sequence