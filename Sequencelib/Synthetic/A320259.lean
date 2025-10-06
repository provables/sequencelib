/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A320259 sequence
-/

namespace Sequence

@[OEIS := A320259, offset := 0, maxIndex := 100, derive := true]
def A320259 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) - (x * x) / 3) + x

end Sequence