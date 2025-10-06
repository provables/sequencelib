/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A300076 sequence
-/

namespace Sequence

@[OEIS := A300076, offset := 0, maxIndex := 89, derive := true]
def A300076 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y - x) / (2 + y)) + x) 2 x

end Sequence