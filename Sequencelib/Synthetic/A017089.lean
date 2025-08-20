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
# A017089 sequence 
-/


namespace Sequence

@[OEIS := A017089, offset := 0, derive := true, maxIndex := 54]
def A017089 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + (2 * (2 * (x + x))))

end Sequence

