/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A288534 sequence
-/

namespace Sequence

@[OEIS := A288534, offset := 0, maxIndex := 100, derive := true]
def A288534 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (x * x)) * if x ≤ 0 then 1 else 2 * x) + x

end Sequence