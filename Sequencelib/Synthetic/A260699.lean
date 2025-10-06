/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260699 sequence
-/

namespace Sequence

@[OEIS := A260699, offset := 0, maxIndex := 46, derive := true]
def A260699 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + ((x - (x / 2)) + x)) * x) / 3

end Sequence