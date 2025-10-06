/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101165 sequence
-/

namespace Sequence

@[OEIS := A101165, offset := 0, maxIndex := 39, derive := true]
def A101165 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 1 + (x + y)) y x) x 0 + (x * x) * x

end Sequence