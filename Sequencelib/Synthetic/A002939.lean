/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002939 sequence
-/

namespace Sequence

@[OEIS := A002939, offset := 0, maxIndex := 46, derive := true]
def A002939 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * ((2 * (x * x)) - x)

end Sequence