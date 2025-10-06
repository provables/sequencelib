/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057580 sequence
-/

namespace Sequence

@[OEIS := A057580, offset := 0, maxIndex := 4, derive := true]
def A057580 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ (x - y) + x) (x - 1) x

end Sequence