/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139608 sequence
-/

namespace Sequence

@[OEIS := A139608, offset := 0, maxIndex := 49, derive := true]
def A139608 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((3 * (x * y)) + x)) 2 x

end Sequence