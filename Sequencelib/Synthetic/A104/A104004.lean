/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104004 sequence
-/

namespace Sequence

@[OEIS := A104004, offset := 0, maxIndex := 50, derive := true]
def A104004 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x + x) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) y 0 1) x 1

end Sequence