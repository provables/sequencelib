/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137936 sequence
-/

namespace Sequence

@[OEIS := A137936, offset := 0, maxIndex := 74, derive := true]
def A137936 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x % (1 + 4)) + x / (1 + 4)) * 3) * 2) - x

end Sequence