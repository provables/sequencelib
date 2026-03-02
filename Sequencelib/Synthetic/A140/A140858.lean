/-
* Copyright (c) 2025 Walter Moreira, Joe Stubbs.
  Released under CC BY-SA 4.0 license as described in the file LICENSE.
  Authors: Walter Moreira and Joe Stubbs
  Translation to Lean 4 and integration into Sequencelib.

* Copyright (c) Thibault Gauthier, Josef Urban.
  Released under GPL-3.0 license.
  Authors: Thibault Gauthier, Josef Urban.
  Original SML code for the sequence.
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140858 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A140858, offset := 1, maxIndex := 13, derive := true]
def A140858 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + loop2 (λ (_x y) ↦ 2 - y) (λ (x _y) ↦ x) (x / 2) 1 2) + x) / 2

end Sequence