/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006221 sequence
-/

namespace Sequence

@[OEIS := A006221, offset := 0, maxIndex := 100, derive := true]
def A006221 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop (λ (x _y) ↦ (((x + 2) + x) * 2) - 1) 2 x + x) + 2) * x) + 1) + 2) + 2) * ((1 + x) + x)

end Sequence