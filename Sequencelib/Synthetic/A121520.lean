/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121520 sequence
-/

namespace Sequence

@[OEIS := A121520, offset := 0, maxIndex := 29, derive := true]
def A121520 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (1 + loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) y 1) * x) (λ (_x y) ↦ y) x 1 x

end Sequence