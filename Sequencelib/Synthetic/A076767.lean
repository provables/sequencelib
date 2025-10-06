/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076767 sequence
-/

namespace Sequence

@[OEIS := A076767, offset := 0, maxIndex := 29, derive := true]
def A076767 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) + x) 1 (loop (λ (x y) ↦ x + (y * y)) x 0) / 2

end Sequence