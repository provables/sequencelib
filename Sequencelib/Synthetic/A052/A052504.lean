/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052504 sequence
-/

namespace Sequence

@[OEIS := A052504, offset := 0, maxIndex := 98, derive := true]
def A052504 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ x * y) ((2 * (x + x)) + x) 1 / loop (λ (x _y) ↦ ((x * 2) * 2) + x) x 1) / loop (λ (x y) ↦ x * y) x 1

end Sequence