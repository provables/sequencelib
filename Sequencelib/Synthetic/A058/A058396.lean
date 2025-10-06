/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058396 sequence
-/

namespace Sequence

@[OEIS := A058396, offset := 0, maxIndex := 100, derive := true]
def A058396 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ 2 + (x + y)) (2 + x) 0 * loop (λ (x _y) ↦ x + x) x 1) / 2) + 1) / 2) / 2

end Sequence