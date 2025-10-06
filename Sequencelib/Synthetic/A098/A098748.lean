/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098748 sequence
-/

namespace Sequence

@[OEIS := A098748, offset := 0, maxIndex := 50, derive := true]
def A098748 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (-(x / y))) x 1 + x) * x) + 1

end Sequence