/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082306 sequence
-/

namespace Sequence

@[OEIS := A082306, offset := 0, maxIndex := 100, derive := true]
def A082306 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ ((x + x) + x) + y) (λ (_x _y) ↦ 0) x 1 x + x) / 2) + 1

end Sequence