/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108613 sequence
-/

namespace Sequence

@[OEIS := A108613, offset := 0, maxIndex := 59, derive := true]
def A108613 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + x) * (((x - ((x / 2) / 2)) / 2) / 2)

end Sequence