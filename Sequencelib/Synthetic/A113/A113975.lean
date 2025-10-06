/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113975 sequence
-/

namespace Sequence

@[OEIS := A113975, offset := 0, maxIndex := 31, derive := true]
def A113975 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop2 (λ (_x y) ↦ 2 + y) (λ (_x _y) ↦ 2) x 0 1

end Sequence