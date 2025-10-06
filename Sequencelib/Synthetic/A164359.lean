/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164359 sequence
-/

namespace Sequence

@[OEIS := A164359, offset := 0, maxIndex := 100, derive := true]
def A164359 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) % 3) + if x ≤ 0 then 1 else 2

end Sequence