/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131874 sequence
-/

namespace Sequence

@[OEIS := A131874, offset := 0, maxIndex := 45, derive := true]
def A131874 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 * ((2 + x) * x))) + loop (λ (x y) ↦ x - y) x 1

end Sequence