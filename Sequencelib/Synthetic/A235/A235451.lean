/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A235451 sequence
-/

namespace Sequence

@[OEIS := A235451, offset := 0, maxIndex := 60, derive := true]
def A235451 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 - ((x * x) / 2)) % 3) + x

end Sequence