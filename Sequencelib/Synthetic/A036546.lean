/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036546 sequence
-/

namespace Sequence

@[OEIS := A036546, offset := 0, maxIndex := 100, derive := true]
def A036546 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 3 * loop (λ (x y) ↦ x + y) 4 x) x 1

end Sequence