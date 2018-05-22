\version "2.19.59"

\header {
	title = "Hannah"
	composer = "Eskmo"
	arranger = "Jacob Helbig"
	tagline = ##f
}

\paper {
	ragged-last-bottom = ##f
}

upper = \relative c' {
	\clef treble
	\key g \minor
	\time 6/4

	g''2. g, | d'~ d | c~ c | r1 r2 |
	a'2. bes, | f'~ f | d~ d | c~ c |
	g' g, | d'~ d | c~ c | r1 r2 |                                        
        a'2. bes, | f'~ f | d~ d | c~ c |	

}

lower = \relative c {
	\clef bass
	\key g \minor
	\time 6/4

}	

\score {
	\new PianoStaff <<
		\set PianoStaff.instrumentName = #"Piano"
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>

}
