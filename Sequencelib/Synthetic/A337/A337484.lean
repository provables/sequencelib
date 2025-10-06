/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A337484 sequence
-/

namespace Sequence

@[OEIS := A337484, offset := 0, maxIndex := 56, derive := true]
def A337484 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop (λ (_x y) ↦ y * y) x 1 - 1) / 3) * 2) + 1) + x) / 2) - x

end Sequence