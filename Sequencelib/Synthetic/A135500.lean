/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135500 sequence
-/

namespace Sequence

@[OEIS := A135500, offset := 0, maxIndex := 100, derive := true]
def A135500 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((1 + x) / 4) / 3) + 1) + x) / 2) / 2) / 2) % 2

end Sequence