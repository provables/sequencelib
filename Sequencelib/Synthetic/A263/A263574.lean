/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263574 sequence
-/

namespace Sequence

@[OEIS := A263574, offset := 0, maxIndex := 75, derive := true]
def A263574 (x : ℕ) : ℕ :=
  Int.toNat <| (((x + x) / (1 + (2 * (2 + 4)))) + x) / 2

end Sequence