/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A268484 sequence
-/

namespace Sequence

@[OEIS := A268484, offset := 0, maxIndex := 40, derive := true]
def A268484 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ (y * y) + x) (1 + x) 0 * 2) * 2) - 1) - x

end Sequence