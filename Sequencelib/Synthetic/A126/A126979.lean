/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126979 sequence
-/

namespace Sequence

@[OEIS := A126979, offset := 0, maxIndex := 100, derive := true]
def A126979 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((2 + (1 + x)) * y)) 4 x

end Sequence