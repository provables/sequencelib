/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A297970 sequence
-/

namespace Sequence

@[OEIS := A297970, offset := 1, maxIndex := 17, derive := true]
def A297970 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 * ((x + x) + y)) 4 x / 2

end Sequence