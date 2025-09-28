/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022280 sequence 
-/


namespace Sequence

@[OEIS := A022280, offset := 0, derive := true, maxIndex := 100]
def A022280 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ x - y) x (x * loop (λ (x y : ℤ) ↦ x * (2 + y)) 2 x)

end Sequence

