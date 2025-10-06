/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112655 sequence
-/

namespace Sequence

@[OEIS := A112655, offset := 0, maxIndex := 100, derive := true]
def A112655 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * ((1 + 4) * ((1 + x) / 3))) + x

end Sequence