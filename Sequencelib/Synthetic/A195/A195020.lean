/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195020 sequence
-/

namespace Sequence

@[OEIS := A195020, offset := 0, maxIndex := 100, derive := true]
def A195020 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((4 * ((x / 2) + x)) + x) * x) + 2) / 2) + 2) + x) / 2) + x) + x) + x) / 2

end Sequence