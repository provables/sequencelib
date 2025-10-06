/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255459 sequence
-/

namespace Sequence

@[OEIS := A255459, offset := 0, maxIndex := 100, derive := true]
def A255459 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ (x + x) + x) y 2 - 2) + x) + x) x 0 + 1

end Sequence