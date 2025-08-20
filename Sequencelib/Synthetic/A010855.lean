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
# A010855 sequence
-/


namespace Sequence

@[OEIS := A010855, offset := 0, derive := true, maxIndex := 54]
def A010855 (_x : ℕ) : ℕ := 16

end Sequence
