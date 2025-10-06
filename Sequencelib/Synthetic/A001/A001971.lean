/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001971 sequence
-/

namespace Sequence

@[OEIS := A001971, offset := 0, maxIndex := 60, derive := true]
def A001971 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y / 2) + x) x 1 / 2

end Sequence