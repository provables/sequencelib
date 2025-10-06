/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A343609 sequence
-/

namespace Sequence

@[OEIS := A343609, offset := 0, maxIndex := 94, derive := true]
def A343609 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x / 3) 2 x

end Sequence