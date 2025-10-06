/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033440 sequence
-/

namespace Sequence

@[OEIS := A033440, offset := 0, maxIndex := 100, derive := true]
def A033440 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ ((((x / 2) + x) / 2) + x) / 2) 1 y + x) x 0

end Sequence