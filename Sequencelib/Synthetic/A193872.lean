/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193872 sequence
-/

namespace Sequence

@[OEIS := A193872, offset := 0, maxIndex := 100, derive := true]
def A193872 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 - (((2 + y) * x) + x)) 2 x * x

end Sequence