/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048617 sequence
-/

namespace Sequence

@[OEIS := A048617, offset := 0, maxIndex := 17, derive := true]
def A048617 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x * y) * y) x 2

end Sequence