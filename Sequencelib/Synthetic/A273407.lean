/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273407 sequence
-/

namespace Sequence

@[OEIS := A273407, offset := 0, maxIndex := 100, derive := true]
def A273407 (x : ℕ) : ℕ :=
  Int.toNat <| ((((1 + x) * (2 + if x ≤ 0 then x else 2)) + x % 2) * 2) - 1

end Sequence