/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285043 sequence
-/

namespace Sequence

@[OEIS := A285043, offset := 0, maxIndex := 20, derive := true]
def A285043 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((2 * (x * y)) - x) * 2) x 1 / loop (λ (x y) ↦ x * y) x 1) *
  loop (λ (x _y) ↦ (1 + x) + 1) ((x * 2) * 2) 1

end Sequence