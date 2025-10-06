/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A239794 sequence
-/

namespace Sequence

@[OEIS := A239794, offset := 1, maxIndex := 100, derive := true]
def A239794 (n : ℕ) : ℤ :=
  let x := n - 1
  (((((loop (λ (x _y) ↦ (x + 2) * 2) 2 x + 2) + x) * x) - 2) - 2) - 2

end Sequence