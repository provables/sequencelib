/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155617 sequence
-/

namespace Sequence

@[OEIS := A155617, offset := 0, maxIndex := 100, derive := true]
def A155617 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (_x y) ↦ 3 * (y + y)) x 2 2 - 1

end Sequence