/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263772 sequence
-/

namespace Sequence

@[OEIS := A263772, offset := 1, maxIndex := 70, derive := true]
def A263772 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * 4) + if x ≤ 0 then 1 else 2) + x

end Sequence