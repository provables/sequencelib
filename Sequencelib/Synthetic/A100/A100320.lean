/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100320 sequence
-/

namespace Sequence

@[OEIS := A100320, offset := 0, maxIndex := 100, derive := true]
def A100320 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((((y - x) / 2) / y) + x) * 2) * 2) x 1

end Sequence