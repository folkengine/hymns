% ŵ (UTF-8 test character: double-u circumflex)
% “ = 0147 (left formatted quote)
% ” = 0148 (right formatted quote)
% — = 0151 (dash)
% – = 0150 (shorter dash)
% © = 0169 (copyright symbol)
% ® = 0174 (registered copyright symbol)
% ⌜ = u231C
% ⌝ = u231D

\version "2.10.33"
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
    title = "Auld Lang Syne"
    %subtitle = ""
    %subsubtitle = ""
    % poet = \markup{ \italic Text: Robert Burns }
    % composer = \markup{ \italic Music: Traditional Scottish }
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
    \time 4/4
    \key f \major
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
        Should auld ac -- quaint -- ance be for -- got,
        and nev -- er brought to mind?
        Should auld ac -- quaint -- ance be for -- got,
        and auld lang syne?

        For auld lang syne, my jo,
        for auld lang syne,
        we'll tak' a cup o' kind -- ness yet,
        for auld lang syne.
}
sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
}
sopWordsThree = \lyricmode
{
    \set stanza = "3. "
}
sopWordsFour = \lyricmode
{
    \set stanza = "4. "
}
sopWordsFive = \lyricmode
{
    \set stanza = "5. "
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
		\tempo 4 = 80
            \partial 4
            c'4     f'4. e'8 f'4 a'4 
                    g'4. f'8 g'4 a'4 
                    f'4. f'8 a'4 c''4 
                    d''2. \bar "" \break

            d''4    c''4. a'8 a'4 f'4 
                    g'4. f'8 g'4 a'4
                    f'4. (d'8) d'4 (c'4) 
                    f'2.  \bar "||" \break

            d''4    c''4. (a'8) a'4 (f'4)
                    g'4. f'8 g'4 d''4   
                    c''4. (a'8) a'4 (c''4)     
                    d''2. \bar "" \break
            
            f''4    c''4. a'8 a'4 f'4 
                    g'4. f'8 g'4 a'8 g'8
                    f'4. (d'8) d'4 (c'4) 
                    f'2. 

		\bar "|."
	    }

	    \new Voice = "altos"
	    {
		\voiceTwo
            c'4     c'4. c'8 c'4 f'4
                    e'4. d'8 e'4 e'4
                    
	    }

        \new Lyrics = sopranos { s1 }

	    %\new Lyrics = sopranosTwo { s1 }
	    %\new Lyrics = sopranosThree { s1 }
	    %\new Lyrics = sopranosFour { s1 }
	    %\new Lyrics = sopranosFive { s1 }

	>>


	\new Staff
	<<
	    \clef bass
	    \new Voice = "tenors"
	    {
		\voiceThree
		\global
            c'4     a4. bes8 a4 c'4 
                    c'4. a8 bes4 c'4
	    }

	    \new Voice = "basses"
	    {
		\voiceFour
            c'4     f4. g8 a4 f4
                    c4. c8 c4 c4
	    }
	>>
	%\context Lyrics = sopranos \lyricsto sopranos \sopWords
	%\context Lyrics = sopranosTwo \lyricsto sopranos \sopWordsTwo
	%\context Lyrics = sopranosThree \lyricsto sopranos \sopWordsThree
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
    }
}

\markup
{
    \column
    {
	%\line{\italic Text: }
	%\line{\italic Music: }
	%\line{\italic Arrangement: }
	%\line{\italic {Words and Music:} }
	%\line{\italic {Tune Name:} }
	%\line{\italic {Poetic Meter:} }
	%\line{\italic Source: }
    }
}