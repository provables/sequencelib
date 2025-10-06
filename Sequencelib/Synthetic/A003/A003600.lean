/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003600 sequence
-/

namespace Sequence

@[OEIS := A003600, offset := 0, maxIndex := 100, derive := true]
def A003600 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x x

end Sequence