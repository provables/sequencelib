/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122747 sequence
-/

namespace Sequence

@[OEIS := A122747, offset := 0, maxIndex := 100, derive := true]
def A122747 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * 2) * 2) * y) * y) (λ (_x y) ↦ 2 + y) x 1 1

end Sequence