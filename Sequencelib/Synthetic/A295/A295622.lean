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
# A295622 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A295622, offset := 5, maxIndex := 100, derive := true]
def A295622 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((((((((((((loop (λ (_x y) ↦ (2 + y) * y) (x + 1) 2 + x) + x) + 2) / 2) + 2) + x) * (1 + x)) / 2) + 2) + x) * 2) + 2) /
    2) -
  2

end Sequence