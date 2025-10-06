/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103453 sequence
-/

namespace Sequence

@[OEIS := A103453, offset := 0, maxIndex := 100, derive := true]
def A103453 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 + (x * y)) (λ (_x _y) ↦ 3) x 1 0

end Sequence