/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220212 sequence
-/

namespace Sequence

@[OEIS := A220212, offset := 0, maxIndex := 100, derive := true]
def A220212 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x 0 * (((x - 2) + x) + x)

end Sequence