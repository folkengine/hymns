% â€œ = U+201C (left formatted quote)
% â€ = U+201D (right formatted quote)
% â€” = U+2014 (em dash)
% â€“ = U+2013 (en dash)
% Â© = U+00A9 (copyright symbol)
% Â® = U+00AE (registered copyright symbol)
% â„— = U+2117 (published; phonorecord sign)

\version "2.12.3"
#(ly:set-option 'point-and-click #f)

\paper
{
    indent = 0.0
    line-width = 185 \mm
    %between-system-space = 0.1 \mm
    %between-system-padding = #1
    %ragged-bottom = ##t
    %top-margin = 0.1 \mm
    %bottom-margin = 0.1 \mm
    %foot-separation = 0.1 \mm
    %head-separation = 0.1 \mm
    %before-title-space = 0.1 \mm
    %between-title-space = 0.1 \mm
    %after-title-space = 0.1 \mm
    paper-height = 32 \cm
    %print-page-number = ##t
    %print-first-page-number = ##t
    %ragged-last-bottom
    %horizontal-shift
    %system-count
    %left-margin
    %paper-width
    %printallheaders
    %systemSeparatorMarkup
}

\header
{
    %dedication = ""
    title = "Det fins ett namn"
    %subtitle = ""
    %subsubtitle = ""
    % poet = \markup{ \italic Text: }
    % composer = \markup{ \italic Music: }
    %meter = ""
    %opus = ""
    %arranger = ""
    %instrument = ""
    %piece = \markup{\null \null \null \null \null \null \null \null \null \null \null \null \null \italic Slowly \null \null \null \null \null \note #"4" #1.0 = 70-100}
    %breakbefore
    %copyright = ""
    tagline = ""
}


global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \key d \major
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}

sopWords = \lyricmode
{
    \override Score . LyricText #'font-size = #-1
    \override Score . LyricHyphen #'minimum-distance = #1
    \override Score . LyricSpace #'minimum-distance = #0.8
    % \override Score . LyricText #'font-name = #"Gentium"
    % \override Score . LyricText #'self-alignment-X = #-1
    \set stanza = "1. "
    %\set vocalName = "Men/Women/Unison/SATB"
    Det fins ett namn jag ger -- na hÃ¶r,
    Dess pris jag spri -- da vill.
    Mitt Ã¶ -- ra som mu -- sik det rÃ¶r,
    Dess li -- ke Ã¤r ej till.
    
    Och det -- ta namn, som ljuf -- vast Ã¤r
    Min mÃ¤ -- sta -- re och her -- re bÃ¤r
    Mitt hopp han Ã¤r fÃ¶r him -- me -- len
    Min nÃ¤r -- ma -- ste och bÃ¤ -- ste vÃ¤n.
}
sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
    Det ta -- lar om en frÃ¤l -- sar -- man,
    Hvars kÃ¤r -- lek gjort mig fri,
    Om blo -- det, som fÃ¶r verl -- den rann,
    Med ren -- ings -- kraft der -- i.
}
sopWordsThree = \lyricmode
{
    \set stanza = "3. "
    Det nam -- net Je -- sus ljuf -- vast Ã¤r
    I him -- mel och pÃ¥ jord.
    Dess skÃ¶n -- het kan ej tol -- kas hÃ¤r
    Med dÃ¶d -- lig tun -- gas ord.
}
sopWordsFour = \lyricmode
{
    \set stanza = "4. "
}
sopWordsFive = \lyricmode
{
    \set stanza = "5. "
}
sopWordsSix = \lyricmode
{
    \set stanza = "6. "
}
sopWordsSeven = \lyricmode
{
    \set stanza = "7. "
}
altoWords = \lyricmode
{

}
tenorWords = \lyricmode
{

}
bassWords = \lyricmode
{
    \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
    Och det -- ta namn, som ljuf -- vast Ã¤r,
    Min mÃ¤ -- sta -- re och her -- re bÃ¤r.
    Mitt hopp han Ã¤r fÃ¶r him -- me -- len,
}

\score
{
    %\transpose es' d'
    <<
	\new Staff
	<<
	    %\set Score.midiInstrument = "Orchestral Strings"
	    %\set Score.midiInstrument = "Choir Aahs"
	    \new Voice = "sopranos"
	    {
		\voiceOne
		\global
		%\override Score.MetronomeMark #'transparent = ##t
		\override Score.MetronomeMark #'stencil = ##f
		
		%\override HorizontalBracket #'direction = #UP
		%\override HorizontalBracket #'bracket-flare = #'(0 . 0)
		%put \startGroup and \stopGroup after notes to create analysis brackets
		
		%\override TextSpanner #'dash-period = #-1
		%\override TextSpanner #'bound-details #'left #'text = \markup{ \concat{\draw-line #'(0 . -1.0) \draw-line #'(1.0 . 0) }}
		%\override TextSpanner #'bound-details #'right #'text = \markup{ \concat{ \draw-line #'(1.0 . 0) \draw-line #'(0 . -1.0) }}
		%put \stopTextSpan \startTextSpan after notes for hymn-style piano introduction brackets; also consider \mark \markup{} for measure markup
		
		\tempo 4 = 95
		\partial 4
		fis'8 (g') a'4 b'8 (cis'') d''4. b'8 a'4 b' a' fis' e' e' e' fis'8 (e') e'2 r4 \bar "" \break
		fis'8 (g') a'4 b'8 (cis''8) d''4. b'8 a'4 c''4 b'4. b'8 a'4 fis' g' e' d'2 r8 \bar "" \break
		fis'8 fis'8. g'16 \autoBeamOff a'2~ a'8 \autoBeamOn a'8 g'8. fis'16 \autoBeamOff g'2~ g'8 \autoBeamOn e'8 e'8. fis'16 \break
		\autoBeamOff g'2~ g'8 \autoBeamOn fis' g'8. a'16 \autoBeamOff fis'2~ fis'8 \autoBeamOn fis' fis'8. g'16 \autoBeamOff a'2~ a'8 \autoBeamOn \bar "" \break
		fis'8 g'8. a'16 \autoBeamOff b'2~ b'8 \autoBeamOn d'' cis''8. b'16 a'4 fis' g' e' d'2.
		\bar "|."
	    }

	    \new Voice = "altos"
	    {
		\voiceTwo
		d'8 (e') fis'4 g' fis'4. g'8 fis'4 g' fis' d' cis' e' d' d' cis'2 s4
		d'8 (e') fis'4 g' fis'4. g'8 fis'4 a' g'4. g'8 fis'4 d' e' cis' d'2 s8
		d'8 d'8. e'16 \autoBeamOff fis'2~ fis'8 \autoBeamOn fis' e'8. d'16 \autoBeamOff e'2~ e'8 \autoBeamOn cis'8 cis'8. d'16
		\autoBeamOff e'2~ e'8 \autoBeamOn d' e'8. fis'16 \autoBeamOff d'2~ d'8 \autoBeamOn d' d'8. e'16 \autoBeamOff fis'2~ fis'8 \autoBeamOn
		d'8 e'8. fis'16 \autoBeamOff g'2~ g'8 \autoBeamOn b' a'8. g'16 fis'4 d' e' cis' d'2.
	    }

	    \new Lyrics = sopranos { s1 }
	    \new Lyrics = sopranosTwo { s1 }
	    \new Lyrics = sopranosThree { s1 }
	    %\new Lyrics = sopranosFour { s1 }
	    %\new Lyrics = sopranosFive { s1 }
	    %\new Lyrics = sopranosSix { s1 }
	    %\new Lyrics = sopranosSeven { s1 }
	    %\new Lyrics = altos { s1 }
	    %\new Lyrics = tenors { s1 }
	    \new Lyrics = basses { s1 }
	>>


	\new Staff
	<<
	    \clef bass
	    \new Voice = "tenors"
	    {
		\voiceThree
		\global
		a4 d' d' d'4. d'8 d'4 d' d' a a a gis gis a2 r4
		a4 d' d' d'4. d'8 d'4 d' d'4. d'8 d'4 a a g fis2 r8
		r8 r4 r8 a8 d'8. d'16 d'4 r4 r8 cis'8 cis'8. cis'16 cis'4 r4
		r8 a8 a8. a16 a4 r4 r8 a8 a8. a16 a4 r4 r8 a8 d'8. d'16 d'8
		r8 r4 r8 d'8 [d'8. d'16 d'8] d' d'8. d'16 d'4 a a g fis2.
	    }

	    \new Voice = "basses"
	    {
		\voiceFour
		d4 d d d4. d8 d4 d d d a, cis e e a,2 s4
		d4 d d d4. d8 d4 fis4 g4. g8 a4 a a, a, d2 s8
		s8 s4 s8 d8 d8. d16 d4 s4 s8 a8 a8. a16 a4 s4
		s8 a,8 a,8. a,16 a,4 s4 s8 d8 d8. d16 d4 s4 s8 d8 d8. d16 d8
		s8 s4 s8 g8 [g8. g16 g8] g8 g8. g16 a4 a a, a, d2.
	    }
	>>
	\context Lyrics = sopranos \lyricsto sopranos \sopWords
	\context Lyrics = sopranosTwo \lyricsto sopranos \sopWordsTwo
	\context Lyrics = sopranosThree \lyricsto sopranos \sopWordsThree
	%\context Lyrics = sopranosFour \lyricsto sopranos \sopWordsFour
	%\context Lyrics = sopranosFive \lyricsto sopranos \sopWordsFive
	%\context Lyrics = sopranosSix \lyricsto sopranos \sopWordsSix
	%\context Lyrics = sopranosSeven \lyricsto sopranos \sopWordsSeven
	%\context Lyrics = altos \lyricsto altos \altoWords
	%\context Lyrics = tenors \lyricsto tenors \tenorWords
	\context Lyrics = basses \lyricsto basses \bassWords
    >>
	
    \midi { }
    \layout
    {	
	\context
	{
	    \Lyrics
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	}
	\context
	{
	    \Voice
	    \consists "Horizontal_bracket_engraver"
	}
    }
}

\markup
{
    \column
    {
	\line{\italic Text: ?}
	\line{\italic Musik: Tullius Clinton Oâ€™Kane (1830â€“1912)}
	%\line{\italic Arrangement: }
	%\line{\italic {Text och Musik:} }
	%\line{\italic {Tune Name:} }
	%\line{\italic {Poetic Meter:} }
	\line{\italic KÃ¤lla: Jubelklangen, 1896 (nr. 51)}
    }
}