/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278182 sequence
-/

namespace Sequence

@[OEIS := A278182, offset := 0, maxIndex := 98, derive := true]
def A278182 (x : ℕ) : ℕ :=
  Int.toNat <| (x % (1 + 4)) + ((x / (1 + 4)) / 2) / 2

end Sequence