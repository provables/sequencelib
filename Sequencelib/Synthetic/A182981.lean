/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182981 sequence
-/

namespace Sequence

@[OEIS := A182981, offset := 0, maxIndex := 7, derive := true]
def A182981 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((x * x) / 2) - x) / 2) * (x / 2)) + x) + 1) + x

end Sequence