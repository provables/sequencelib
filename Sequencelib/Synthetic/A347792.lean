/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A347792 sequence
-/

namespace Sequence

@[OEIS := A347792, offset := 0, maxIndex := 65, derive := true]
def A347792 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((x / 2) + x) / 2) + x) / 2) / (1 + 4)) + x) / 2) + x

end Sequence