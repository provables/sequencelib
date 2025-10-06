/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246639 sequence
-/

namespace Sequence

@[OEIS := A246639, offset := 0, maxIndex := 50, derive := true]
def A246639 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) (1 + 4) 0) + 2

end Sequence