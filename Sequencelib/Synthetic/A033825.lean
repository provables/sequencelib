/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033825 sequence
-/

namespace Sequence

@[OEIS := A033825, offset := 0, maxIndex := 11, derive := true]
def A033825 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((1 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1) / 3) + 1) + x) + 2) / 2) / 2) * 2) + 2

end Sequence