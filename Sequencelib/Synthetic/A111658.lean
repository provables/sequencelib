/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A111658 sequence 
-/


namespace Sequence

@[OEIS := A111658, offset := 0, derive := true, maxIndex := 7]
def A111658 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) + x) % (1 + (2 * (2 + 4))))

end Sequence

