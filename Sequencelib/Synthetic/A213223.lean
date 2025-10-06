/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213223 sequence
-/

namespace Sequence

@[OEIS := A213223, offset := 0, maxIndex := 100, derive := true]
def A213223 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * (1 + 4)) * 2) + loop (λ (x _y) ↦ (x * (3 + 2)) * 2) x 1

end Sequence