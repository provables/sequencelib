/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166115 sequence
-/

namespace Sequence

@[OEIS := A166115, offset := 2, maxIndex := 4, derive := true]
def A166115 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 + loop (λ (x y) ↦ 2 * ((x + x) + y)) x 2

end Sequence