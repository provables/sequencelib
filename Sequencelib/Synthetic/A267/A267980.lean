/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267980 sequence
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