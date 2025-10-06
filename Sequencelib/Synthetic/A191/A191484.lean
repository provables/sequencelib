/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191484 sequence
-/

namespace Sequence

@[OEIS := A191484, offset := 0, maxIndex := 25, derive := true]
def A191484 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((1 + x) * loop (λ (x _y) ↦ x * x) 2 (1 + x))) / 2

end Sequence