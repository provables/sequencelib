/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A272352 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A272352, offset := 6, maxIndex := 100, derive := true]
def A272352 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (1 + (2 + y)) x + x) (1 + x) 0

end Sequence