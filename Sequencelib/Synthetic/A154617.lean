/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154617 sequence
-/

namespace Sequence

@[OEIS := A154617, offset := 0, maxIndex := 100, derive := true]
def A154617 (x : ℕ) : ℕ :=
  Int.toNat <| ((x - 1) + x) * (loop (λ (x y) ↦ (2 + y) * x) 2 x - x)

end Sequence