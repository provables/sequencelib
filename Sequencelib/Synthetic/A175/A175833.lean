/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175833 sequence
-/

namespace Sequence

@[OEIS := A175833, offset := 0, maxIndex := 86, derive := true]
def A175833 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) (2 + (x % 3)) 1

end Sequence