/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213033 sequence
-/

namespace Sequence

@[OEIS := A213033, offset := 0, maxIndex := 44, derive := true]
def A213033 (x : ℕ) : ℕ :=
  Int.toNat <| ((x / 2) * (x / 3)) * x

end Sequence