/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A025767 sequence
-/

namespace Sequence

@[OEIS := A025767, offset := 0, maxIndex := 100, derive := true]
def A025767 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x * x) / (2 * 4)) + x) / 3) + 1

end Sequence