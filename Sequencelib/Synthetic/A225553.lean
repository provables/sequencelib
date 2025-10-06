/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225553 sequence
-/

namespace Sequence

@[OEIS := A225553, offset := 3, maxIndex := 40, derive := true]
def A225553 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ 2 + (x + y)) (x - 1) x + x) / (1 + x)

end Sequence