/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058968 sequence
-/

namespace Sequence

@[OEIS := A058968, offset := 3, maxIndex := 100, derive := true]
def A058968 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ (2 * (2 + (2 + x))) + y) x 2 - 1

end Sequence