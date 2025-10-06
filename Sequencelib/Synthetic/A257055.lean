/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257055 sequence
-/

namespace Sequence

@[OEIS := A257055, offset := 0, maxIndex := 100, derive := true]
def A257055 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((y * y) - y) + x) x x * x) + x) / 2

end Sequence