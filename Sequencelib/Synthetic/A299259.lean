/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A299259 sequence
-/

namespace Sequence

@[OEIS := A299259, offset := 0, maxIndex := 100, derive := true]
def A299259 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * loop (λ (_x y) ↦ 2 + (2 * (y * y))) x 1) * 2) / 3

end Sequence