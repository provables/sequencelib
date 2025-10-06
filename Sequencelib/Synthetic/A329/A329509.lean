/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329509 sequence
-/

namespace Sequence

@[OEIS := A329509, offset := 0, maxIndex := 84, derive := true]
def A329509 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (x - y) / 2) (x - 2) x + 1) + x

end Sequence