/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098559 sequence
-/

namespace Sequence

@[OEIS := A098559, offset := 0, maxIndex := 100, derive := true]
def A098559 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else loop (λ (x y) ↦ 3 * (x * y)) x 2

end Sequence