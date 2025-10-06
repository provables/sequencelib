/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132222 sequence
-/

namespace Sequence

@[OEIS := A132222, offset := 0, maxIndex := 60, derive := true]
def A132222 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (((x / 2) / 2) + y) / 2) x 0 + x) * 2) + 1

end Sequence