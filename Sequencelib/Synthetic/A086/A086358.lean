/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086358 sequence
-/

namespace Sequence

@[OEIS := A086358, offset := 0, maxIndex := 100, derive := true]
def A086358 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ x * y) x 1 - 1) % ((4 * 2) + 1)) + 1

end Sequence