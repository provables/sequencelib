/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157792 sequence
-/

namespace Sequence

@[OEIS := A157792, offset := 1, maxIndex := 72, derive := true]
def A157792 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((1 + if (((x / 2) / 2) / 2) ≤ 0 then x else 0) / 3) + 1) + x) / 3) + 1

end Sequence