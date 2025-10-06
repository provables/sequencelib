/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274991 sequence
-/

namespace Sequence

@[OEIS := A274991, offset := 0, maxIndex := 3, derive := true]
def A274991 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((x * x) * x) + y) x 0 + 2) * 2

end Sequence