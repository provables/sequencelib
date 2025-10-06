/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089061 sequence
-/

namespace Sequence

@[OEIS := A089061, offset := 0, maxIndex := 36, derive := true]
def A089061 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 + x)) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0

end Sequence