/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101423 sequence
-/

namespace Sequence

@[OEIS := A101423, offset := 0, maxIndex := 50, derive := true]
def A101423 (x : ℕ) : ℕ :=
  Int.toNat <| ((((2 * (2 * (2 + x))) + x) * (2 + x)) + 2) / (3 * 2)

end Sequence