/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A061222 sequence
-/

namespace Sequence

@[OEIS := A061222, offset := 0, maxIndex := 100, derive := true]
def A061222 (x : ℕ) : ℕ :=
  Int.toNat <| (((((2 + x) * ((2 + x) * (4 + x))) - 2) + 1) * (x + 1)) + 2

end Sequence