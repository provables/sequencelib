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
# A267980 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A267980, offset := 0, maxIndex := 19, derive := true]
def A267980 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ (x * y) * y) (x + x) 1 / loop (λ (x y) ↦ x * y) x 1) / loop (λ (x y) ↦ x * y) x 1) /
        loop (λ (x y) ↦ (1 + y) * x) x 1) /
      loop (λ (x y) ↦ x * y) x 1) /
    (1 + x)) *
  (1 + (2 * (x + x)))

end Sequence