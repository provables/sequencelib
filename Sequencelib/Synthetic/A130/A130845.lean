/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130845 sequence
-/

namespace Sequence

@[OEIS := A130845, offset := 0, maxIndex := 70, derive := true]
def A130845 (x : ℕ) : ℕ :=
  Int.toNat <| (((((x / 2) * x) % 2) * x) + x) / 4

end Sequence