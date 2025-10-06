/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293475 sequence
-/

namespace Sequence

@[OEIS := A293475, offset := 0, maxIndex := 100, derive := true]
def A293475 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((1 + y) * (y * y)) + x) (1 + x) 0 / 2) * x

end Sequence