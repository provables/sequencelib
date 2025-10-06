/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211164 sequence
-/

namespace Sequence

@[OEIS := A211164, offset := 0, maxIndex := 100, derive := true]
def A211164 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ (1 + x) + x) x 0 x / 2) / 2) + 1

end Sequence