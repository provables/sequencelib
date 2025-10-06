/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059918 sequence
-/

namespace Sequence

@[OEIS := A059918, offset := 0, maxIndex := 10, derive := true]
def A059918 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 + x) * x) x 2 / 2

end Sequence