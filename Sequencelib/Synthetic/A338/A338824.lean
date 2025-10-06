/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A338824 sequence
-/

namespace Sequence

@[OEIS := A338824, offset := 1, maxIndex := 76, derive := true]
def A338824 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (x % 2) ≤ 0 then (x / 2) % 2 else x - 1

end Sequence