/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056520 sequence
-/

namespace Sequence

@[OEIS := A056520, offset := 0, maxIndex := 41, derive := true]
def A056520 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y * y) + x) x 1

end Sequence