/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183869 sequence
-/

namespace Sequence

@[OEIS := A183869, offset := 0, maxIndex := 100, derive := true]
def A183869 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x y) ↦ (y / (((x * x) / 4) + x)) + x) x 1) + x

end Sequence