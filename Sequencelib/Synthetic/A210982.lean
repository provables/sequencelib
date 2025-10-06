/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A210982 sequence
-/

namespace Sequence

@[OEIS := A210982, offset := 0, maxIndex := 100, derive := true]
def A210982 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (((x - (x / 2)) + x) + x)) * (x / 2)) + x

end Sequence