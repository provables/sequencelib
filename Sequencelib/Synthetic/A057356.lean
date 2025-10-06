/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057356 sequence
-/

namespace Sequence

@[OEIS := A057356, offset := 0, maxIndex := 100, derive := true]
def A057356 (x : ℕ) : ℕ :=
  Int.toNat <| (x + x) / (1 + (2 + 4))

end Sequence