/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128929 sequence
-/

namespace Sequence

@[OEIS := A128929, offset := 4, maxIndex := 84, derive := true]
def A128929 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x _y) ↦ 1 + (x / 2)) 2 x

end Sequence