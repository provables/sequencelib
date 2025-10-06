/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255847 sequence
-/

namespace Sequence

@[OEIS := A255847, offset := 0, maxIndex := 48, derive := true]
def A255847 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * ((2 * 4) + x * x)

end Sequence