/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282737 sequence
-/

namespace Sequence

@[OEIS := A282737, offset := 0, maxIndex := 100, derive := true]
def A282737 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x y) ↦ x + y) y y) (x / 2) 1 + x

end Sequence