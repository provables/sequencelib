/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143208 sequence
-/

namespace Sequence

@[OEIS := A143208, offset := 1, maxIndex := 100, derive := true]
def A143208 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ (_x y) ↦ (y * y) - y) x 2 - 2) * 3) / 2) + 2

end Sequence