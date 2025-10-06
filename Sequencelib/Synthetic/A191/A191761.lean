/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191761 sequence
-/

namespace Sequence

@[OEIS := A191761, offset := 0, maxIndex := 70, derive := true]
def A191761 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * ((2 * (x * x)) % (4 + 1))

end Sequence