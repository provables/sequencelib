/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159957 sequence
-/

namespace Sequence

@[OEIS := A159957, offset := 0, maxIndex := 99, derive := true]
def A159957 (x : ℕ) : ℕ :=
  Int.toNat <| ((x / (1 + 4)) + x) % (1 + 4)

end Sequence