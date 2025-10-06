/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067389 sequence
-/

namespace Sequence

@[OEIS := A067389, offset := 0, maxIndex := 36, derive := true]
def A067389 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + ((x + x) + x)) * (x * x)) + x

end Sequence