/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273791 sequence
-/

namespace Sequence

@[OEIS := A273791, offset := 0, maxIndex := 100, derive := true]
def A273791 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (_x y) ↦ 1 + y) (λ (_x _y) ↦ 1) x 1 2 + x) + x) * 4

end Sequence