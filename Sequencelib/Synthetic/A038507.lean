/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038507 sequence
-/

namespace Sequence

@[OEIS := A038507, offset := 0, maxIndex := 23, derive := true]
def A038507 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ x * y) x 1

end Sequence