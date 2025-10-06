/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131380 sequence
-/

namespace Sequence

@[OEIS := A131380, offset := 0, maxIndex := 100, derive := true]
def A131380 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ y - x) (((x / 3) + 1) + x) 1

end Sequence