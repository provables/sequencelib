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
# A115384 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A115384, offset := 0, maxIndex := 100, derive := true]
def A115384 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 0 x % 2) + 1) + x) / 2

end Sequence