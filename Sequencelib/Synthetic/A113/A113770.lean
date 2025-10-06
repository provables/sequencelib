/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113770 sequence
-/

namespace Sequence

@[OEIS := A113770, offset := 0, maxIndex := 50, derive := true]
def A113770 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else loop (λ (x _y) ↦ 2 - (2 * (x + x))) 2 x

end Sequence