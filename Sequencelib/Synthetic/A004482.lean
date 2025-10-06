/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004482 sequence
-/

namespace Sequence

@[OEIS := A004482, offset := 0, maxIndex := 61, derive := true]
def A004482 (x : ℕ) : ℕ :=
  Int.toNat <| x + loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ (-x)) x 1 2

end Sequence