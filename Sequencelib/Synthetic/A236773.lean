/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A236773 sequence
-/

namespace Sequence

@[OEIS := A236773, offset := 0, maxIndex := 100, derive := true]
def A236773 (x : ℕ) : ℕ :=
  Int.toNat <| (((((1 + (2 + (x + x))) * (x * x)) / 3) + x) + x) / 2

end Sequence