/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080227 sequence
-/

namespace Sequence

@[OEIS := A080227, offset := 0, maxIndex := 100, derive := true]
def A080227 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 - (y % 2)) + x * y) x 0

end Sequence