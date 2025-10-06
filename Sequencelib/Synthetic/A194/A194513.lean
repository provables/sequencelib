/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194513 sequence
-/

namespace Sequence

@[OEIS := A194513, offset := 1, maxIndex := 97, derive := true]
def A194513 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ (2 * (x / 3)) - x) 2 (1 + x)

end Sequence