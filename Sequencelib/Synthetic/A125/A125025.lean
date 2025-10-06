/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A125025 sequence
-/

namespace Sequence

@[OEIS := A125025, offset := 1, maxIndex := 5, derive := true]
def A125025 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + if (x % 2) ≤ 0 then 1 else 4 + 2

end Sequence