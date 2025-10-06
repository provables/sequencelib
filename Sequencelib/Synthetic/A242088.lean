/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242088 sequence
-/

namespace Sequence

@[OEIS := A242088, offset := 0, maxIndex := 6, derive := true]
def A242088 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x / 2) - 2) + y) x 0 + x

end Sequence