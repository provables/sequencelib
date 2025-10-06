/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212747 sequence
-/

namespace Sequence

@[OEIS := A212747, offset := 0, maxIndex := 39, derive := true]
def A212747 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ x + y) x x * x) + x / 2) / 2) * 2) + 1) + x

end Sequence