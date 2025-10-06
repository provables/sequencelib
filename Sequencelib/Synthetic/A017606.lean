/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017606 sequence
-/

namespace Sequence

@[OEIS := A017606, offset := 0, maxIndex := 28, derive := true]
def A017606 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (1 + x) * (y + x)) (λ (_x _y) ↦ 1) 2 2 (2 * (x + x))

end Sequence