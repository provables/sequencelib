/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289133 sequence
-/

namespace Sequence

@[OEIS := A289133, offset := 0, maxIndex := 80, derive := true]
def A289133 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((x + x) / 3)) / 3

end Sequence