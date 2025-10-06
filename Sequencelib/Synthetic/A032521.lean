/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032521 sequence
-/

namespace Sequence

@[OEIS := A032521, offset := 0, maxIndex := 68, derive := true]
def A032521 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y) ↦ y) (x - ((2 * 4) * 3)) 1 + x) - 1

end Sequence