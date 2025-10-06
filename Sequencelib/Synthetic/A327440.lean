/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A327440 sequence
-/

namespace Sequence

@[OEIS := A327440, offset := 0, maxIndex := 77, derive := true]
def A327440 (x : ℕ) : ℕ :=
  Int.toNat <| ((x / 2) + x) / (1 + 4)

end Sequence