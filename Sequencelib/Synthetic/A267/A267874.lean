/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267874 sequence
-/

namespace Sequence

@[OEIS := A267874, offset := 0, maxIndex := 100, derive := true]
def A267874 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) + loop (λ (x y) ↦ (x / 2) + y) x 1

end Sequence