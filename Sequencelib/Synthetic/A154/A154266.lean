/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154266 sequence
-/

namespace Sequence

@[OEIS := A154266, offset := 0, maxIndex := 100, derive := true]
def A154266 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((x + x) + x)) 3 x - 1

end Sequence