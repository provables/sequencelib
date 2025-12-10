/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120170 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A120170, offset := 1, maxIndex := 100, derive := true]
def A120170 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ 1 + ((x / (1 + 4)) + x)) x 0 / 3) + 2) / 2

end Sequence