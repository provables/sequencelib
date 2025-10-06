/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106608 sequence
-/

namespace Sequence

@[OEIS := A106608, offset := 0, maxIndex := 100, derive := true]
def A106608 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % (1 + (2 + 4))) ≤ 0 then x / (1 + (2 + 4)) else x

end Sequence