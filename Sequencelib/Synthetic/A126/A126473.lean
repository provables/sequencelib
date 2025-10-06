/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126473 sequence
-/

namespace Sequence

@[OEIS := A126473, offset := 0, maxIndex := 23, derive := true]
def A126473 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) + y) (λ (x y) ↦ 3 * (x + y)) x 1 2

end Sequence