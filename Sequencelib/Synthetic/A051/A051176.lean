/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051176 sequence
-/

namespace Sequence

@[OEIS := A051176, offset := 0, maxIndex := 100, derive := true]
def A051176 (x : ℕ) : ℕ :=
  Int.toNat <| x / (1 + if (x % 3) ≤ 0 then 2 else 0)

end Sequence