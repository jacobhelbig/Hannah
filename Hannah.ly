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
	
	a' c, | d~ d | r1 r2 | r1 r2 |
	\clef bass d,,2. c | r1 r2 |
	<f f,>2. r2 r4 | \clef treble r1 r2 |
	g''2. a | bes2.~ bes2 d,4 |
	c'2.~ c2. | d~ d | a2. bes | c~ c2 f,4 |
	f'2.~ f | g,2.~ g | \clef bass
	g,,4 bes g bes g bes | g bes g bes g bes
	f' bes, f' bes, f' bes, | es d es d es d |
	es d es d es d | es c es c es c |
	d f, d' f, d' f, | d' f, d' f, c' f, |
}

lower = \relative c {
	\clef bass
	\key g \minor
	\time 6/4
	
	g'4 bes g bes g bes | g bes g bes g bes |
	f' bes, f' bes, f' bes, | es d es d es d |
	es d es d es d | es c es c es c |
	d f, d' f, d' f, | d' f, d' f, c' f, |
	g4 bes g bes g bes | g bes g bes g bes |                                
        f' bes, f' bes, f' bes, | es d es d es d |                               
        f c f c f c | es bes es bes es bes |                                        
        d f, d' f, d' f, | c' f, c' f, c' f, |

	g4 bes g bes g bes | g bes g bes g bes |                                
        f' bes, f' bes, f' bes, | es d es d es d |                               
        es d es d es d | es c es c es c |                                        
        d f, d' f, d' f, | d' f, d' f, c' f, |
	g bes g c g c | g d' g, d' g,2 |
	g4 f' g, f' g, f' |
	es d es d es d | f c f c f c |
	<f f,>2.~ <f f,> | d4 g, d' g, d' g, |
	c g c g c g | r2 r4 <g, g,>2. | r2 r4 <g g,>2. |
	r2 r4 <f f,>2. | r2 r4 <f f,>2. |
	r2 r4 <c c,>2. | r2 r4 <c c,>2. |
	
}	

\score {
	\new PianoStaff <<
		\set PianoStaff.instrumentName = #"Piano"
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>

}
