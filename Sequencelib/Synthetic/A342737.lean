/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A342737 sequence
-/

namespace Sequence

@[OEIS := A342737, offset := 0, maxIndex := 40, derive := true]
def A342737 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((2 + (2 + y)) + x) * x) 2 (1 + x) / 2) + 2) / 2

end Sequence