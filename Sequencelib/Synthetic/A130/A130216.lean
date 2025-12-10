/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130216 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A130216, offset := 0, maxIndex := 100, derive := true]
def A130216 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ (((1 - ((x / 3) % 2)) + x) * 2) - y) (λ (x _y) ↦ x) x 1 1 / 2) + 1) + 2

end Sequence