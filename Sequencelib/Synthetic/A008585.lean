/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008585 sequence
-/

namespace Sequence

@[OEIS := A008585, offset := 0, maxIndex := 59, derive := true]
def A008585 (x : ℕ) : ℕ :=
  Int.toNat <| (x + x) + x

end Sequence