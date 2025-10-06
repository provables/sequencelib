/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130773 sequence
-/

namespace Sequence

@[OEIS := A130773, offset := 0, maxIndex := 70, derive := true]
def A130773 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 % if x ≤ 0 then 1 else x) + x) + x

end Sequence