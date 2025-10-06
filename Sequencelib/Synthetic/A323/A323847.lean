/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323847 sequence
-/

namespace Sequence

@[OEIS := A323847, offset := 0, maxIndex := 100, derive := true]
def A323847 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) (1 + x) 0 * x) / 2) / 2) + 1) - x) - x * x

end Sequence