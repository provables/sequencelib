/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002395 sequence
-/

namespace Sequence

@[OEIS := A002395, offset := 0, maxIndex := 3, derive := true]
def A002395 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 + y) * x) - 1) x 2 / 2

end Sequence