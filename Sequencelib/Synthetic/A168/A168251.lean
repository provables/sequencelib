/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168251 sequence
-/

namespace Sequence

@[OEIS := A168251, offset := 0, maxIndex := 100, derive := true]
def A168251 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (x _y) ↦ 2 - (x % 2)) x 1 x * x

end Sequence