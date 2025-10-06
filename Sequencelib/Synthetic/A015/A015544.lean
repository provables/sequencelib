/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015544 sequence
-/

namespace Sequence

@[OEIS := A015544, offset := 0, maxIndex := 100, derive := true]
def A015544 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x y) ↦ 2 * (((x + y) + y) + y)) x 0 1

end Sequence