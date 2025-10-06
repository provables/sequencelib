/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072863 sequence
-/

namespace Sequence

@[OEIS := A072863, offset := 0, maxIndex := 27, derive := true]
def A072863 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x + x) x (1 + loop (λ (x y) ↦ x + y) (1 + x) 2) / 2) / 2

end Sequence