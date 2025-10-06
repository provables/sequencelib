/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187394 sequence
-/

namespace Sequence

@[OEIS := A187394, offset := 1, maxIndex := 100, derive := true]
def A187394 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x _y) ↦ 1 + ((x / 2) / 3)) 2 x + x) / 2) / 3) + 1) + x

end Sequence