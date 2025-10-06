/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086090 sequence
-/

namespace Sequence

@[OEIS := A086090, offset := 0, maxIndex := 23, derive := true]
def A086090 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) x x + loop (λ (x _y) ↦ x + x) x 1

end Sequence