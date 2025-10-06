/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113217 sequence
-/

namespace Sequence

@[OEIS := A113217, offset := 0, maxIndex := 100, derive := true]
def A113217 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + (x % (1 + (2 * 4)))) x 0 % 2

end Sequence