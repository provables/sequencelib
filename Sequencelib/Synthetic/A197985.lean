/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A197985 sequence
-/

namespace Sequence

@[OEIS := A197985, offset := 1, maxIndex := 100, derive := true]
def A197985 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 + if x ≤ 0 then 1 else (2 + x) * x)

end Sequence