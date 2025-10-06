/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086159 sequence
-/

namespace Sequence

@[OEIS := A086159, offset := 0, maxIndex := 65, derive := true]
def A086159 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((y / 2) + x)) (x / 3) 1

end Sequence