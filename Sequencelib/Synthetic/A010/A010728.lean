/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010728 sequence
-/

namespace Sequence

@[OEIS := A010728, offset := 0, maxIndex := 80, derive := true]
def A010728 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + (x + y)) 2 (x % 2)

end Sequence