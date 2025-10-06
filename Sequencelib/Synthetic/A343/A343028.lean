/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A343028 sequence
-/

namespace Sequence

@[OEIS := A343028, offset := 0, maxIndex := 71, derive := true]
def A343028 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x + x) / 3) + x) + x) + x

end Sequence