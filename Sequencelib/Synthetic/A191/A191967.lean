/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191967 sequence
-/

namespace Sequence

@[OEIS := A191967, offset := 0, maxIndex := 48, derive := true]
def A191967 (x : ℕ) : ℕ :=
  Int.toNat <| (((x - 1) / 2) + x) * x

end Sequence