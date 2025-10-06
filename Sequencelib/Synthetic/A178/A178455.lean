/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178455 sequence
-/

namespace Sequence

@[OEIS := A178455, offset := 0, maxIndex := 32, derive := true]
def A178455 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y / 3) + x) + x) x 0

end Sequence