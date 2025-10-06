/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157240 sequence
-/

namespace Sequence

@[OEIS := A157240, offset := 0, maxIndex := 100, derive := true]
def A157240 (x : ℕ) : ℤ :=
  1 + loop2 (λ (x y) ↦ 2 * ((x - y) - y)) (λ (x _y) ↦ x) x 1 1

end Sequence