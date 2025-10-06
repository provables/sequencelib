/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213037 sequence
-/

namespace Sequence

@[OEIS := A213037, offset := 0, maxIndex := 100, derive := true]
def A213037 (x : ℕ) : ℕ :=
  Int.toNat <| ((x % 2) * x) + (x * x) / 2

end Sequence