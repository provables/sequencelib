/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018195 sequence
-/

namespace Sequence

@[OEIS := A018195, offset := 0, maxIndex := 7, derive := true]
def A018195 (x : ℕ) : ℕ :=
  Int.toNat <| comprN
  (λ (x) ↦ (((((loop (λ (x _y) ↦ if (x % 2) ≤ 0 then 1 else (x + x) + 1) x 1 / (x + 1)) + x) + x % 2) + 2) / 2) % 2) x

end Sequence