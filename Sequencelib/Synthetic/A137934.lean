/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137934 sequence
-/

namespace Sequence

@[OEIS := A137934, offset := 1, maxIndex := 100, derive := true]
def A137934 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if ((x % ((x % 2) + 2)) - 1) ≤ 0 then 2 else 0

end Sequence