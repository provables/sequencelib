/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048503 sequence
-/

namespace Sequence

@[OEIS := A048503, offset := 0, maxIndex := 50, derive := true]
def A048503 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x - y) + x) y y + x) x 1 + x

end Sequence