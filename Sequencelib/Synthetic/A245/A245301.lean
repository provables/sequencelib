/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245301 sequence
-/

namespace Sequence

@[OEIS := A245301, offset := 0, maxIndex := 100, derive := true]
def A245301 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x 0 + ((2 + x) * x) * x) + x

end Sequence