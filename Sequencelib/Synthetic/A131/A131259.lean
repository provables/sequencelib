/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131259 sequence
-/

namespace Sequence

@[OEIS := A131259, offset := 0, maxIndex := 100, derive := true]
def A131259 (x : ℕ) : ℤ :=
  ((1 + loop (λ (x y) ↦ y - x) x (loop (λ (x y) ↦ x + y) x 1)) / (2 - (x % 2))) / 2

end Sequence