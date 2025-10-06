/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003829 sequence
-/

namespace Sequence

@[OEIS := A003829, offset := 3, maxIndex := 8, derive := true]
def A003829 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ 2 + (2 + (x % (y * y)))) x 1

end Sequence