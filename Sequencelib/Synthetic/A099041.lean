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
# A099041 sequence 
-/


namespace Sequence

@[OEIS := A099041, offset := 0, derive := true, maxIndex := 32]
def A099041 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 * (2 + (x + y))) x 1

end Sequence

