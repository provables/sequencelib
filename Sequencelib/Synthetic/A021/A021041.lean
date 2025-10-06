/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021041 sequence
-/

namespace Sequence

@[OEIS := A021041, offset := 0, maxIndex := 98, derive := true]
def A021041 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + (x * y)) (x % 3) 1 - 1

end Sequence