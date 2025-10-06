/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140226 sequence
-/

namespace Sequence

@[OEIS := A140226, offset := 0, maxIndex := 35, derive := true]
def A140226 (x : ℕ) : ℕ :=
  Int.toNat <| ((if x ≤ 0 then 1 else loop (λ (x y) ↦ (x + (y * y)) - y) x x + x) + x) + x

end Sequence