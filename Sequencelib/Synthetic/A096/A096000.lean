/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096000 sequence
-/

namespace Sequence

@[OEIS := A096000, offset := 0, maxIndex := 100, derive := true]
def A096000 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ 1 + (x + x)) 2 y + y) * y) + x) x 1 + x

end Sequence