/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051398 sequence
-/

namespace Sequence

@[OEIS := A051398, offset := 3, maxIndex := 100, derive := true]
def A051398 (n : ℕ) : ℤ :=
  let x := n - 3
  ((loop (λ (x y) ↦ y - (x * y)) x 0 + x) * 2) + 2

end Sequence