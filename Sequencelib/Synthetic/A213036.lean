/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213036 sequence
-/

namespace Sequence

@[OEIS := A213036, offset := 0, maxIndex := 50, derive := true]
def A213036 (x : ℕ) : ℕ :=
  Int.toNat <| (x + ((2 * x) / 3)) * ((2 + x) / 3)

end Sequence