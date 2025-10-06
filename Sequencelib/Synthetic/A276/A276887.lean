/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A276887 sequence
-/

namespace Sequence

@[OEIS := A276887, offset := 1, maxIndex := 64, derive := true]
def A276887 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((loop (λ (x _y) ↦ x / 3) 2 x / 2) + x) / 2) + x) / 2) / 2) * 2) + 1) + x

end Sequence