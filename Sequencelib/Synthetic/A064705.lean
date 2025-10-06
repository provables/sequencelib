/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064705 sequence
-/

namespace Sequence

@[OEIS := A064705, offset := 0, maxIndex := 4, derive := true]
def A064705 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ (((y * y) / 2) + 2) * y) x 1

end Sequence