/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000593 sequence
-/

namespace Sequence

@[OEIS := A000593, offset := 1, maxIndex := 100, derive := true]

def A000593 (n : ℕ) : ℕ :=
  (Nat.divisors n).sum fun d => if ¬ d % 2 = 0 then d else 0


end Sequence