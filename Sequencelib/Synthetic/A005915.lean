/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005915 sequence
-/

namespace Sequence

@[OEIS := A005915, offset := 0, maxIndex := 36, derive := true]
def A005915 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (3 * ((x * x) + x))) * (1 + x)

end Sequence