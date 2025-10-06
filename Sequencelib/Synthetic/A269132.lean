/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269132 sequence
-/

namespace Sequence

@[OEIS := A269132, offset := 0, maxIndex := 54, derive := true]
def A269132 (x : ℕ) : ℕ :=
  Int.toNat <| (((2 * (x * x)) + x) / (1 + 4)) + x

end Sequence