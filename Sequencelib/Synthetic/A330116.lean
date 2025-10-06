/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330116 sequence
-/

namespace Sequence

@[OEIS := A330116, offset := 1, maxIndex := 66, derive := true]
def A330116 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((1 + loop (λ (x _y) ↦ (x / 2) / 2) 2 x) + x) / 3) + 1) + x) / 3) + 1) + x

end Sequence