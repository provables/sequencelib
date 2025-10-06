/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066043 sequence
-/

namespace Sequence

@[OEIS := A066043, offset := 1, maxIndex := 100, derive := true]
def A066043 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * if x ≤ 0 then 1 else 2 - x % 2

end Sequence