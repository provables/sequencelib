/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023470 sequence
-/

namespace Sequence

@[OEIS := A023470, offset := 0, maxIndex := 60, derive := true]
def A023470 (x : ℕ) : ℤ :=
  2 + loop (λ (x y) ↦ x - (y * y)) 4 x

end Sequence