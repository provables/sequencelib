/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111500 sequence
-/

namespace Sequence

@[OEIS := A111500, offset := 0, maxIndex := 100, derive := true]
def A111500 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + x) * loop (λ (x y) ↦ x + y) (x + (2 + x)) 0) / 2

end Sequence