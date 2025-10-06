/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011658 sequence
-/

namespace Sequence

@[OEIS := A011658, offset := 0, maxIndex := 80, derive := true]
def A011658 (x : ℕ) : ℕ :=
  Int.toNat <| (x % (1 + 4)) / 3

end Sequence