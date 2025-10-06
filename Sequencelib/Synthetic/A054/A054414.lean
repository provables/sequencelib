/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054414 sequence
-/

namespace Sequence

@[OEIS := A054414, offset := 0, maxIndex := 60, derive := true]
def A054414 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((loop (λ (x y) ↦ (((x / 2) / 2) + x * y) / 2) 2 x / 2) + x) / 2) + x) / 2) / 2) + 2) + x) / 2) + x) + x

end Sequence