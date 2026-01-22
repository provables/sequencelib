/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001764 sequence
-/

namespace Sequence

@[OEIS := A001764, offset := 0, maxIndex := 50, derive := true]

def A001764 (n : ℕ) : ℕ := (Nat.choose (3 * n) n) / (2 * n + 1)


end Sequence