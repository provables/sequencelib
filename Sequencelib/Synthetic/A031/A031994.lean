/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A031994 sequence
-/

namespace Sequence

@[OEIS := A031994, offset := 1, maxIndex := 34, derive := true]
def A031994 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ (x) ↦ (x % (1 + 4)) - x % (1 + (2 * 4))) x

end Sequence