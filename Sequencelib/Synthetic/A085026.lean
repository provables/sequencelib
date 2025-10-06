/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085026 sequence
-/

namespace Sequence

@[OEIS := A085026, offset := 0, maxIndex := 39, derive := true]
def A085026 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) + ((y * x) * 2) * 3) (λ (_x _y) ↦ 1) 2 1 x

end Sequence