/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A284353 sequence
-/

namespace Sequence

@[OEIS := A284353, offset := 0, maxIndex := 100, derive := true]
def A284353 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) + y) (λ (x _y) ↦ 2 + x) x 1 0

end Sequence