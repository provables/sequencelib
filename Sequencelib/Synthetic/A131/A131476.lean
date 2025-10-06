/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131476 sequence
-/

namespace Sequence

@[OEIS := A131476, offset := 0, maxIndex := 41, derive := true]
def A131476 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) * x) / 3

end Sequence