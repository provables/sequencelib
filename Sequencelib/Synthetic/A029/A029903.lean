/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A029903 sequence
-/

namespace Sequence

@[OEIS := A029903, offset := 0, maxIndex := 19, derive := true]
def A029903 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((1 - loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 1) % 4) + 1) + x) * 3) + 1) / 2) / 2) + 1) / 2) + x

end Sequence