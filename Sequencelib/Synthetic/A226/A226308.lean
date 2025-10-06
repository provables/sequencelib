/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A226308 sequence
-/

namespace Sequence

@[OEIS := A226308, offset := 0, maxIndex := 100, derive := true]
def A226308 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (((y % 3) - 1) + x) + x) x 1 + 1) + (x - 1) % 3) - 2

end Sequence