/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014286 sequence
-/

namespace Sequence

@[OEIS := A014286, offset := 0, maxIndex := 100, derive := true]
def A014286 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x - 1) + y) (λ (x _y) ↦ x - 1) x x x

end Sequence