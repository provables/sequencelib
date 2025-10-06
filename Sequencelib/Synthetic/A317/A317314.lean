/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A317314 sequence
-/

namespace Sequence

@[OEIS := A317314, offset := 0, maxIndex := 100, derive := true]
def A317314 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (3 * if (x % 2) ≤ 0 then x else 0)) + x

end Sequence