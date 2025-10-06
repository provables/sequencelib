/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143371 sequence
-/

namespace Sequence

@[OEIS := A143371, offset := 1, maxIndex := 41, derive := true]
def A143371 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ (2 * ((2 + y) * y)) + x) x 1 + x

end Sequence