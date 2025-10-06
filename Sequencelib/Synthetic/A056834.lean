/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056834 sequence
-/

namespace Sequence

@[OEIS := A056834, offset := 0, maxIndex := 100, derive := true]
def A056834 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) / (1 + (2 + 4))

end Sequence