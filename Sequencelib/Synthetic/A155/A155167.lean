/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155167 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A155167, offset := 1, maxIndex := 40, derive := true]
def A155167 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((x / 3) + x)) x 1

end Sequence