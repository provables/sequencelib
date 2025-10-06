/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015006 sequence
-/

namespace Sequence

@[OEIS := A015006, offset := 0, maxIndex := 39, derive := true]
def A015006 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ 1 + ((2 * ((x + x) + x)) + x)) y 0 * x) x 1

end Sequence