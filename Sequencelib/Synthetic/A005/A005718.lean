/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005718 sequence
-/

namespace Sequence

@[OEIS := A005718, offset := 0, maxIndex := 43, derive := true]
def A005718 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((2 * (x + x)) / y) + x) (1 + x) 1 - 2) - x

end Sequence