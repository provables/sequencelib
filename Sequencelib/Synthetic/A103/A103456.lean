/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103456 sequence
-/

namespace Sequence

@[OEIS := A103456, offset := 0, maxIndex := 100, derive := true]
def A103456 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (1 + 4) * (x * y)) (λ (_x _y) ↦ 2) x 2 1 - 1

end Sequence