/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124193 sequence
-/

namespace Sequence

@[OEIS := A124193, offset := 0, maxIndex := 5, derive := true]
def A124193 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + x) * ((x % 4) + x / 2)) / 2

end Sequence