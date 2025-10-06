/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332120 sequence
-/

namespace Sequence

@[OEIS := A332120, offset := 0, maxIndex := 15, derive := true]
def A332120 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 1 + (2 * ((2 * (x + x)) + x))) (x + x) 1 - loop (λ (x _y) ↦ (((x * 2) * 2) + x) * 2) x 1) * 2

end Sequence