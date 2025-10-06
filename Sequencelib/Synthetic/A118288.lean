/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118288 sequence
-/

namespace Sequence

@[OEIS := A118288, offset := 0, maxIndex := 4, derive := true]
def A118288 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + 4) * ((x - 1) % 4)) + x / 3) / 2

end Sequence