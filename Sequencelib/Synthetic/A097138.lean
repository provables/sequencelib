/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097138 sequence
-/

namespace Sequence

@[OEIS := A097138, offset := 0, maxIndex := 24, derive := true]
def A097138 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * (x + x)) + y / 2) x 0

end Sequence