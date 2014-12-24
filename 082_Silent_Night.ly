% “ = U+201C (left formatted quote)
% ” = U+201D (right formatted quote)
% — = U+2014 (em dash)
% – = U+2013 (en dash)
% © = U+00A9 (copyright symbol)
% ® = U+00AE (registered copyright symbol)
% ℗ = U+2117 (published; phonorecord sign)

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
    %paper-height = 32 \cm
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
    title = "Silent Night"
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
    %\override Staff.TimeSignature #'style = #'()
    \time 6/8
    \key bes \major
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
    Si -- lent night, peace -- ful night!
    All things sleep, shep -- herds keep
    Watch on \set ignoreMelismata = ##t Beth -- le -- hem’s \unset ignoreMelismata si -- lent hill,
    And un -- seen, while all is still,
    An -- gels watch a -- bove,
    An -- gels watch a -- bove.
}
sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
    Bright the star shines a -- far,
    Guid -- ing \set ignoreMelismata = ##t trav -- ’lers \unset ignoreMelismata on their way,
    Who their gold and in -- cense bring,
    Of -- f’rings to the prom -- ised King,
    Child of Da -- vid’s line,
    Child of Da -- vid’s line.
}
sopWordsThree = \lyricmode
{
    \set stanza = "3. "
    Light a -- round! joy -- ous sound!
    An -- gel \set ignoreMelismata = ##t voic -- es \unset ignoreMelismata wake the air;
    “Glo -- ry be to God in heav’n,
    Peace on earth to you is giv’n,
    Christ the Sav -- ior’s come,
    Christ the Sav -- ior’s come.”
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
		
		\tempo 4 = 65
		f'8. (g'16) f'8 d'4. f'8. (g'16) f'8 d'4. c''4 c''8 a'4~ a'8 bes'4 bes'8 f'4. \break
		g'4 g'8 bes'8. (a'16) g'8 f'8. (g'16) f'8 d'4. g'4 g'8 bes'8. (a'16) g'8 f'8. (g'16) f'8 d'4. \break
		c''4 c''8 es''8. (c''16) a'8 bes'4. (d'') bes'8. (f'16) d'8 f'8. (es'16) c'8 bes4.~ bes
		\bar "|."
	    }

	    \new Voice = "altos"
	    {
		\voiceTwo
		d'8. (es'16) d'8 bes4. d'8. (es'16) d'8 bes4. es'4 es'8 es'4~ es'8 d'4 d'8 d'4.
		es'4 es'8 g'8. (f'16) es'8 d'8. (es'16) d'8 bes4. es'4 es'8 g'8. (f'16) es'8 d'8. (es'16) d'8 bes4.
		es'4 es'8 a'4 es'8 d'4. (f') d'4 bes8 c'4 a8 bes4.~ bes
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
	    %\new Lyrics = basses { s1 }
	>>


	\new Staff
	<<
	    \clef bass
	    \new Voice = "tenors"
	    {
		\voiceThree
		\global
		bes4 bes8 f4. bes4 bes8 f4. a4 a8 c'4~ c'8 bes4 bes8 bes4.
		bes4 bes8 bes4 bes8 bes4 bes8 f4 (bes8) bes4 bes8 es'4 bes8 bes4 bes8 f4.
		a4 a8 c'8. (a16) c'8 bes4. (f) f4 f8 a4 f8 d4.~ d
	    }

	    \new Voice = "basses"
	    {
		\voiceFour
		bes,4 bes,8 bes,4. bes,4 bes,8 bes,4. f4 f8 f4~ f8 bes,4 bes,8 bes,4.
		es4 es8 es4 es8 bes,4 bes,8 bes,4. es4 es8 es4 es8 bes,4 bes,8 bes,4.
		f4 f8 f4 f8 bes,2. bes,4 f8 f4 f8 bes,4.~ bes,
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
	%\context Lyrics = basses \lyricsto basses \bassWords
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
	\line{\italic Text: Joseph Mohr (1792–1848), 1818}
	\line{\italic Music: Franz Gruber (1787–1863), ca. 1820}
	\line{\italic Translation: Anonymous}
	%\line{\italic {Words and Music:} }
	%\line{\italic {Tune Name:} }
	%\line{\italic {Poetic Meter:} }
	\line{\italic {Source: \italic Relief \italic Society \italic Song \italic Book,} 1919—no. 82}
    }
}