/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014483 sequence
-/

namespace Sequence

@[OEIS := A014483, offset := 0, maxIndex := 100, derive := true]
def A014483 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y * y) + x) (1 + x) 0 * loop (λ (x _y) ↦ x + x) x 1

end Sequence