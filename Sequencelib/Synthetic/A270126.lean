/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A270126 sequence
-/

namespace Sequence

@[OEIS := A270126, offset := 0, maxIndex := 15, derive := true]
def A270126 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (((x / 2) % 3) + x) + x) (x + x) 1

end Sequence