/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007494 sequence
-/

namespace Sequence

@[OEIS := A007494, offset := 0, maxIndex := 100, derive := true]
def A007494 (x : ℕ) : ℕ :=
  Int.toNat <| (x - (x / 2)) + x

end Sequence