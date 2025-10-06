/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058582 sequence
-/

namespace Sequence

@[OEIS := A058582, offset := 0, maxIndex := 35, derive := true]
def A058582 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) (x / 2) (1 + ((x + x) - x / 2))

end Sequence