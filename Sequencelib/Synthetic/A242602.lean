/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242602 sequence
-/

namespace Sequence

@[OEIS := A242602, offset := 0, maxIndex := 86, derive := true]
def A242602 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (loop (λ (x y) ↦ x - y) y x % 2) - x) (x / 3) 0

end Sequence