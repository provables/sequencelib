/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078689 sequence
-/

namespace Sequence

@[OEIS := A078689, offset := 0, maxIndex := 73, derive := true]
def A078689 (x : ℕ) : ℕ :=
  Int.toNat <| if ((2 + x) % 3) ≤ 0 then x + x else 1

end Sequence