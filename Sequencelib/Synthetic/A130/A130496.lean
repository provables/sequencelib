/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130496 sequence
-/

namespace Sequence

@[OEIS := A130496, offset := 0, maxIndex := 77, derive := true]
def A130496 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (x / (1 + 4))

end Sequence