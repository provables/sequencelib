/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007877 sequence
-/

namespace Sequence

@[OEIS := A007877, offset := 0, maxIndex := 84, derive := true]
def A007877 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 - y) (λ (x _y) ↦ x) x 0 1

end Sequence