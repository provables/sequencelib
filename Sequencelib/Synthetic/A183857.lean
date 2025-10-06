/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183857 sequence
-/

namespace Sequence

@[OEIS := A183857, offset := 1, maxIndex := 55, derive := true]
def A183857 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 + (((y / 3) + x) + y)) x 1

end Sequence