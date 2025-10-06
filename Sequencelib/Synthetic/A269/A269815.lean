/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269815 sequence
-/

namespace Sequence

@[OEIS := A269815, offset := 0, maxIndex := 15, derive := true]
def A269815 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (x + ((2 * 2) + 1)) + y) x 1 1 - 1) + 1) * loop (λ (x _y) ↦ x + x) x 1) / 2) +
      1) *
    2) -
  1

end Sequence