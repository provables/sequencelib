/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006268 sequence
-/

namespace Sequence

@[OEIS := A006268, offset := 0, maxIndex := 4, derive := true]
def A006268 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((2 + (x * x)) * x) + x) x 3

end Sequence