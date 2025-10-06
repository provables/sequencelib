/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247792 sequence
-/

namespace Sequence

@[OEIS := A247792, offset := 0, maxIndex := 100, derive := true]
def A247792 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x _y) ↦ (x + x) + x) 2 x * x)

end Sequence