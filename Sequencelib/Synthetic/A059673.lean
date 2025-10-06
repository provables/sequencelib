/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059673 sequence
-/

namespace Sequence

@[OEIS := A059673, offset := 0, maxIndex := 28, derive := true]
def A059673 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x - 1) + x) x (x + x) - x

end Sequence