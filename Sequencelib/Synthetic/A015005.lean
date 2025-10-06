/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015005 sequence
-/

namespace Sequence

@[OEIS := A015005, offset := 0, maxIndex := 49, derive := true]
def A015005 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ 1 + ((2 + 4) * y)) x 1 1

end Sequence