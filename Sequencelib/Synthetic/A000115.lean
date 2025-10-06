/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000115 sequence
-/

namespace Sequence

@[OEIS := A000115, offset := 0, maxIndex := 65, derive := true]
def A000115 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (y / 2) + x) x x + x) / (1 + 4)) + 1

end Sequence