/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078785 sequence
-/

namespace Sequence

@[OEIS := A078785, offset := 0, maxIndex := 4, derive := true]
def A078785 (x : ℕ) : ℤ :=
  2 + loop (λ (x _y) ↦ (x - (2 % x)) + x) x 2

end Sequence