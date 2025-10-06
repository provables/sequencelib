/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188511 sequence
-/

namespace Sequence

@[OEIS := A188511, offset := 0, maxIndex := 100, derive := true]
def A188511 (x : ℕ) : ℕ :=
  Int.toNat <| (((x + x) / (1 + 4)) + x) / 2

end Sequence