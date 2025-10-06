/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004526 sequence
-/

namespace Sequence

@[OEIS := A004526, offset := 0, maxIndex := 100, derive := true]
def A004526 (x : ℕ) : ℕ :=
  Int.toNat <| x / 2

end Sequence