/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190035 sequence
-/

namespace Sequence

@[OEIS := A190035, offset := 1, maxIndex := 100, derive := true]
def A190035 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (2 + x)) + loop (λ (x y) ↦ (x / 2) + y) x 1

end Sequence