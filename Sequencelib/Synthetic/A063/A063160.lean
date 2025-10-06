/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063160 sequence
-/

namespace Sequence

@[OEIS := A063160, offset := 1, maxIndex := 48, derive := true]
def A063160 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((3 * (2 * x)) + 2) * 2) * 2) + if x ≤ 0 then 2 else 1

end Sequence