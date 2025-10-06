/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002532 sequence
-/

namespace Sequence

@[OEIS := A002532, offset := 0, maxIndex := 100, derive := true]
def A002532 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x y) ↦ (2 * (x + y)) + y) x 0 1

end Sequence