/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A259361 sequence
-/

namespace Sequence

@[OEIS := A259361, offset := 0, maxIndex := 100, derive := true]
def A259361 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y / (1 + x)) + x) / 2) x 0

end Sequence