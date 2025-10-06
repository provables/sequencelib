/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132208 sequence
-/

namespace Sequence

@[OEIS := A132208, offset := 0, maxIndex := 44, derive := true]
def A132208 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + (3 * ((x * x) + x))) * ((2 * 2) + 1)) + 1

end Sequence