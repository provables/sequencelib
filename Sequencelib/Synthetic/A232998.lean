/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A232998 sequence
-/

namespace Sequence

@[OEIS := A232998, offset := 0, maxIndex := 8, derive := true]
def A232998 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * loop (λ (x _y) ↦ 2 * ((x + x) + x)) (y + y) x) x 1 * 2

end Sequence