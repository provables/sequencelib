/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143795 sequence
-/

namespace Sequence

@[OEIS := A143795, offset := 1, maxIndex := 56, derive := true]
def A143795 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x _y) ↦ (x + x) + x) 2 (x / 2)) + x

end Sequence