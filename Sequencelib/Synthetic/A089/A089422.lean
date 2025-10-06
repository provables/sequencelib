/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089422 sequence
-/

namespace Sequence

@[OEIS := A089422, offset := 0, maxIndex := 20, derive := true]
def A089422 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 + (x % y)) % x) + y) x 1

end Sequence