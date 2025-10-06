/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319625 sequence
-/

namespace Sequence

@[OEIS := A319625, offset := 0, maxIndex := 10, derive := true]
def A319625 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ x * y) (x / 2) 1 - x) / (1 + x)) / 4) + 1

end Sequence