/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184418 sequence
-/

namespace Sequence

@[OEIS := A184418, offset := 0, maxIndex := 100, derive := true]
def A184418 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ if x ≤ 0 then y else 0) x 2 / 2) + x) + x

end Sequence