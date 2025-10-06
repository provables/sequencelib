/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158865 sequence
-/

namespace Sequence

@[OEIS := A158865, offset := 0, maxIndex := 7, derive := true]
def A158865 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (((2 + x) * x) + x)

end Sequence